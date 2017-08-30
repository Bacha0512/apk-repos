.class public Lcom/rami_bar/fun_call/activities/FragmentWeb;
.super Landroid/support/v4/app/Fragment;
.source "FragmentWeb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rami_bar/fun_call/activities/FragmentWeb$MyGestureListener;
    }
.end annotation


# instance fields
.field private ib_webview_back:Landroid/widget/ImageButton;

.field private ib_webview_forward:Landroid/widget/ImageButton;

.field private ib_webview_reload:Landroid/widget/ImageButton;

.field private rl_webview_buttons_holder:Landroid/widget/RelativeLayout;

.field private srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private tv_headline:Landroid/widget/TextView;

.field private wb_web:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/rami_bar/fun_call/activities/FragmentWeb;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentWeb;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/rami_bar/fun_call/activities/FragmentWeb;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentWeb;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentWeb;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->onSwipeUp()V

    return-void
.end method

.method static synthetic access$400(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V
    .locals 0
    .param p0, "x0"    # Lcom/rami_bar/fun_call/activities/FragmentWeb;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->onSwipeDown()V

    return-void
.end method

.method private getViewsIds(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    const v0, 0x7f100188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    .line 81
    const v0, 0x7f1000cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->tv_headline:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f10016e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 84
    const v0, 0x7f100189

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->rl_webview_buttons_holder:Landroid/widget/RelativeLayout;

    .line 86
    const v0, 0x7f10018a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->ib_webview_back:Landroid/widget/ImageButton;

    .line 87
    const v0, 0x7f10018b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->ib_webview_reload:Landroid/widget/ImageButton;

    .line 88
    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->ib_webview_forward:Landroid/widget/ImageButton;

    .line 89
    return-void
.end method

.method private handleClicks()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->ib_webview_back:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentWeb$1;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb$1;-><init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->ib_webview_reload:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentWeb$2;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb$2;-><init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->ib_webview_forward:Landroid/widget/ImageButton;

    new-instance v1, Lcom/rami_bar/fun_call/activities/FragmentWeb$3;

    invoke-direct {v1, p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb$3;-><init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-void
.end method

.method private onSwipeDown()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->rl_webview_buttons_holder:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    return-void
.end method

.method private onSwipeUp()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->rl_webview_buttons_holder:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    return-void
.end method

.method private openWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 105
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/rami_bar/fun_call/utiles/Constants;->API_VOIP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "paypal/user_view.php?user_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getInstance(Landroid/content/Context;)Lcom/rami_bar/fun_call/utiles/SharedUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/rami_bar/fun_call/utiles/SharedUser;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 107
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 109
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 110
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 111
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 112
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 113
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->requestFocus(I)Z

    .line 114
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 115
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 117
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    new-instance v2, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;

    invoke-direct {v2, p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb$4;-><init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 149
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/rami_bar/fun_call/activities/FragmentWeb$MyGestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/rami_bar/fun_call/activities/FragmentWeb$MyGestureListener;-><init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;Lcom/rami_bar/fun_call/activities/FragmentWeb$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 150
    .local v0, "gestureDetector":Landroid/view/GestureDetector;
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->wb_web:Landroid/webkit/WebView;

    new-instance v2, Lcom/rami_bar/fun_call/activities/FragmentWeb$5;

    invoke-direct {v2, p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentWeb$5;-><init>(Lcom/rami_bar/fun_call/activities/FragmentWeb;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    return-void
.end method

.method private setDataToViews()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "suggestion"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;

    .line 93
    .local v0, "mSuggestion":Lcom/rami_bar/fun_call/objects/receive/Suggestion;
    if-nez v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->tv_headline:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/rami_bar/fun_call/objects/receive/Suggestion;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p0, Lcom/rami_bar/fun_call/activities/FragmentWeb;->srl_refresh:Landroid/support/v4/widget/SwipeRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 101
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->openWebView()V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v1, 0x7f040042

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->getViewsIds(Landroid/view/View;)V

    .line 39
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->setDataToViews()V

    .line 41
    invoke-direct {p0}, Lcom/rami_bar/fun_call/activities/FragmentWeb;->handleClicks()V

    .line 43
    return-object v0
.end method
