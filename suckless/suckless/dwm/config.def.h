/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 0;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 0;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "monospace:size=8" };
static const char dmenufont[]       = "monospace:size=10";
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = "#eeeeee";
static const char col_cyan[]        = "#005577";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_cyan  },
};

/* tagging */
static const char *tags[] = { " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 " };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
    /* class           instance    title       tags mask     switchtotag     isfloating   monitor */
    { NULL,            NULL,       NULL,       1 << 6,       1 << 6,         0,           -1 },
    { "Alacritty",     NULL,       NULL,       1 << 0,       1 << 0,         0,           -1 },
    { "st",            NULL,       NULL,       1 << 1,       1 << 1,         0,           -1 },
    { "Code",          NULL,       NULL,       1 << 1,       1 << 1,         0,           -1 },
    { "firefox",       NULL,       NULL,       1 << 2,       1 << 2,         0,           -1 },
    { "librewolf",     NULL,       NULL,       1 << 2,       1 << 2,         0,           -1 },
    { "Brave-browser", NULL,       NULL,       1 << 2,       1 << 2,         0,           -1 },
    { "pgadmin4",      NULL,       NULL,       1 << 3,       1 << 3,         0,           -1 },
    { "TablePlus",     NULL,       NULL,       1 << 3,       1 << 3,         0,           -1 },
    { "mpv",           NULL,       NULL,       1 << 3,       1 << 3,         0,           -1 },
    { "Teams",         NULL,       NULL,       1 << 4,       1 << 4,         0,           -1 },
    { "Slack",         NULL,       NULL,       1 << 4,       1 << 4,         0,           -1 },
    { "Nautilus",      NULL,       NULL,       1 << 5,       1 << 5,         0,           -1 },
    { "File-roller",   NULL,       NULL,       1 << 5,       1 << 5,         1,           -1 },
};

/* layout(s) */
static const float mfact     = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 0; /* 1 will force focus on the fullscreen window */

static const Layout layouts[] = {
	/* symbol     arrange function */
    { "[M]",      monocle },    /* first entry is default */
    { "[]=",      tile },
    { "><>",      NULL },    /* no layout function means floating behavior */
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "st", NULL };
static const char *term2cmd[] = { "alacritty", NULL };
static const char *webcmd[]   = { "firefox", NULL };
static const char *web2cmd[]  = { "librewolf", NULL };

static const Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_h,      spawn,          {.v = dmenucmd } },
    { MODKEY,                       XK_t,      spawn,          {.v = termcmd } },
    { MODKEY,                       XK_Return, spawn,          {.v = term2cmd } },
    { MODKEY,                       XK_w,      spawn,          {.v = webcmd } },
    { MODKEY,                       XK_l,      spawn,          {.v = web2cmd} },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	/* { MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY|ShiftMask,             XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY|ShiftMask,             XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} }, */
	{ MODKEY,                       XK_q,      killclient,     {0} },
    { MODKEY,                       XK_m,      setlayout,      {.v = &layouts[0]} },
    { MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	/* { MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } }, */
	TAGKEYS(                        XK_c,                      0)
	TAGKEYS(                        XK_i,                      1)
	TAGKEYS(                        XK_e,                      2)
	TAGKEYS(                        XK_a,                      3)
	TAGKEYS(                        XK_y,                      4)
	TAGKEYS(                        XK_o,                      5)
	TAGKEYS(                        XK_u,                      6)
	/* TAGKEYS(                        XK_comma,                  7)
	TAGKEYS(                        XK_9,                      8) */
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

