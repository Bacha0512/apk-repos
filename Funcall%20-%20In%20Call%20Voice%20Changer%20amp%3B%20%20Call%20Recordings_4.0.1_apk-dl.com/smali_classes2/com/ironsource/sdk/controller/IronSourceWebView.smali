.class public Lcom/ironsource/sdk/controller/IronSourceWebView;
.super Landroid/webkit/WebView;
.source "IronSourceWebView.java"

# interfaces
.implements Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/IronSourceWebView$State;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;
    }
.end annotation


# static fields
.field public static APP_IDS:Ljava/lang/String;

.field public static DISPLAY_WEB_VIEW_INTENT:I

.field public static EXTERNAL_URL:Ljava/lang/String;

.field public static IS_INSTALLED:Ljava/lang/String;

.field public static IS_STORE:Ljava/lang/String;

.field public static IS_STORE_CLOSE:Ljava/lang/String;

.field private static JSON_KEY_FAIL:Ljava/lang/String;

.field private static JSON_KEY_SUCCESS:Ljava/lang/String;

.field public static OPEN_URL_INTENT:I

.field public static REQUEST_ID:Ljava/lang/String;

.field public static RESULT:Ljava/lang/String;

.field public static SECONDARY_WEB_VIEW:Ljava/lang/String;

.field public static WEBVIEW_TYPE:Ljava/lang/String;

.field public static mDebugMode:I


# instance fields
.field private final GENERIC_MESSAGE:Ljava/lang/String;

.field private PUB_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

.field private isKitkatAndAbove:Ljava/lang/Boolean;

.field private isRemoveCloseEventHandler:Z

.field private mCacheDirectory:Ljava/lang/String;

.field private mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

.field private mCloseEventTimer:Landroid/os/CountDownTimer;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mControllerKeyPressed:Ljava/lang/String;

.field private mControllerLayout:Landroid/widget/FrameLayout;

.field private mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field mCurrentActivityContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mGlobalControllerTimeFinish:Z

.field private mGlobalControllerTimer:Landroid/os/CountDownTimer;

.field private mHiddenForceCloseHeight:I

.field private mHiddenForceCloseLocation:Ljava/lang/String;

.field private mHiddenForceCloseWidth:I

.field private mISAppKey:Ljava/lang/String;

.field private mISExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mISUserId:Ljava/lang/String;

.field private mISmiss:Z

.field private mIsActivityThemeTranslucent:Z

.field private mIsImmersive:Z

.field private mIsInterstitialAvailable:Ljava/lang/Boolean;

.field private mLoadControllerTimer:Landroid/os/CountDownTimer;

.field private mOWAppKey:Ljava/lang/String;

.field private mOWCreditsAppKey:Ljava/lang/String;

.field private mOWCreditsMiss:Z

.field private mOWCreditsUserId:Ljava/lang/String;

.field private mOWExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOWUserId:Ljava/lang/String;

.field private mOWmiss:Z

.field private mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

.field private mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;

.field private mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

.field private mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

.field private mOrientationState:Ljava/lang/String;

.field private mRVAppKey:Ljava/lang/String;

.field private mRVUserId:Ljava/lang/String;

.field private mRequestParameters:Ljava/lang/String;

.field private mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mSavedStateLocker:Ljava/lang/Object;

.field private mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

.field mUiHandler:Landroid/os/Handler;

.field private mUri:Landroid/net/Uri;

.field private mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

.field private mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    sput v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDebugMode:I

    .line 126
    const-string v0, "is_store"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_STORE:Ljava/lang/String;

    .line 127
    const-string v0, "is_store_close"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_STORE_CLOSE:Ljava/lang/String;

    .line 128
    const-string v0, "webview_type"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->WEBVIEW_TYPE:Ljava/lang/String;

    .line 129
    const-string v0, "external_url"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 130
    const-string v0, "secondary_web_view"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    .line 131
    sput v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->DISPLAY_WEB_VIEW_INTENT:I

    .line 132
    const/4 v0, 0x1

    sput v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->OPEN_URL_INTENT:I

    .line 133
    const-string v0, "appIds"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->APP_IDS:Ljava/lang/String;

    .line 134
    const-string v0, "requestId"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->REQUEST_ID:Ljava/lang/String;

    .line 135
    const-string v0, "isInstalled"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_INSTALLED:Ljava/lang/String;

    .line 136
    const-string v0, "result"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->RESULT:Ljava/lang/String;

    .line 2902
    const-string v0, "success"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    .line 2903
    const-string v0, "fail"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x32

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 101
    const-class v0, Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    .line 102
    const-string v0, "IronSource"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->PUB_TAG:Ljava/lang/String;

    .line 106
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->GENERIC_MESSAGE:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    .line 151
    const-string v0, "interrupt"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 158
    iput v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    .line 159
    iput v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    .line 160
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->None:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 180
    iput-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedStateLocker:Ljava/lang/Object;

    .line 194
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    .line 195
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsActivityThemeTranslucent:Z

    .line 3492
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$7;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$7;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 199
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    .line 203
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initLayout(Landroid/content/Context;)V

    .line 205
    new-instance v0, Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/AdUnitsState;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 207
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 208
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/precache/DownloadManager;->setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 210
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    .line 212
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;

    invoke-direct {v0, p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 213
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 215
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebViewSettings()V

    .line 217
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createJSInterface(Landroid/content/Context;)Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 221
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    invoke-direct {v0, p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 222
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    .line 223
    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISmiss:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISExtraParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    return p1
.end method

.method static synthetic access$4100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/precache/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsActivityThemeTranslucent:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsActivityThemeTranslucent:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->closeWebView()V

    return-void
.end method

.method static synthetic access$502(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    return p1
.end method

.method static synthetic access$5100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->PUB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebviewBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Z

    .prologue
    .line 96
    invoke-direct/range {p0 .. p10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$602(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isRemoveCloseEventHandler:Z

    return v0
.end method

.method static synthetic access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isRemoveCloseEventHandler:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimeFinish:Z

    return p1
.end method

.method private closeWebView()V
    .locals 1

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    if-eqz v0, :cond_0

    .line 2895
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onCloseRequested()V

    .line 2897
    :cond_0
    return-void
.end method

.method private createInitProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 19
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2568
    const/16 v18, 0x0

    .line 2570
    .local v18, "script":Ljava/lang/String;
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v13

    .line 2572
    .local v13, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 2573
    .local v17, "rvParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "applicationKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVAppKey:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2574
    const-string v2, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVUserId:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2575
    if-eqz v13, :cond_1

    .line 2576
    invoke-virtual {v13}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2577
    invoke-virtual {v13}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2580
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2581
    const-string v2, "demandSourceName"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2584
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 2585
    .local v16, "params":Ljava/lang/String;
    const-string v2, "initRewardedVideo"

    const-string v3, "onInitRewardedVideoSuccess"

    const-string v4, "onInitRewardedVideoFail"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2619
    .end local v13    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .end local v16    # "params":Ljava/lang/String;
    .end local v17    # "rvParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_0
    if-eqz v18, :cond_3

    .line 2620
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2621
    :cond_3
    return-void

    .line 2587
    :cond_4
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 2590
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 2591
    .local v14, "interstitialParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "applicationKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2592
    const-string v2, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISExtraParameters:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 2594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISExtraParameters:Ljava/util/Map;

    invoke-interface {v14, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2597
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 2598
    .restart local v16    # "params":Ljava/lang/String;
    const-string v2, "initInterstitial"

    const-string v3, "onInitInterstitialSuccess"

    const-string v4, "onInitInterstitialFail"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2600
    goto :goto_0

    .end local v14    # "interstitialParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "params":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_8

    .line 2602
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2603
    .local v15, "offerwallParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "applicationKey"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    const-string v2, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    invoke-interface {v15, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 2606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    invoke-interface {v15, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2608
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ironsource/sdk/controller/IronSourceWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v16

    .line 2609
    .restart local v16    # "params":Ljava/lang/String;
    const-string v2, "initOfferWall"

    const-string v3, "onInitOfferWallSuccess"

    const-string v4, "onInitOfferWallFail"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2611
    goto/16 :goto_0

    .end local v15    # "offerwallParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "params":Ljava/lang/String;
    :cond_8
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 2612
    const-string v3, "productType"

    const-string v4, "OfferWall"

    const-string v5, "applicationKey"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsAppKey:Ljava/lang/String;

    const-string v7, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsUserId:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v16

    .line 2616
    .restart local v16    # "params":Ljava/lang/String;
    const-string v2, "getUserCredits"

    const-string v3, "null"

    const-string v4, "onGetUserCreditsFail"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0
.end method

.method private evaluateJavascriptKitKat(Ljava/lang/String;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 2825
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2826
    return-void
.end method

.method private extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 2958
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2959
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2961
    .local v0, "funToCall":Ljava/lang/String;
    return-object v0
.end method

.method private extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 2950
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2951
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2953
    .local v0, "funToCall":Ljava/lang/String;
    return-object v0
.end method

.method private flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2624
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2625
    .local v2, "jsObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 2626
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2627
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2628
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2630
    .local v3, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2631
    :catch_0
    move-exception v0

    .line 2632
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flatMapToJsonAsStringfailed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2638
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private generateJSToInject(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;

    .prologue
    .line 3676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3677
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3678
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 3682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3684
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "successFunc"    # Ljava/lang/String;
    .param p3, "failFunc"    # Ljava/lang/String;

    .prologue
    .line 3690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3692
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3693
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3694
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "successFunc"    # Ljava/lang/String;
    .param p4, "failFunc"    # Ljava/lang/String;

    .prologue
    .line 3699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3701
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3702
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3703
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 15
    .param p1, "productType"    # Ljava/lang/String;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 3208
    const/4 v5, 0x0

    .line 3210
    .local v5, "fail":Z
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 3212
    .local v6, "jsObj":Lorg/json/JSONObject;
    const-string v1, ""

    .line 3213
    .local v1, "appKey":Ljava/lang/String;
    const-string v9, ""

    .line 3215
    .local v9, "userId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3217
    .local v7, "productExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3219
    sget-object v10, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v10}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3220
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVAppKey:Ljava/lang/String;

    .line 3221
    iget-object v9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVUserId:Ljava/lang/String;

    .line 3223
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    invoke-static {v10}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    .line 3224
    .local v2, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v2, :cond_0

    .line 3225
    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v7

    .line 3240
    .end local v2    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_0
    :goto_0
    :try_start_0
    const-string v10, "productType"

    move-object/from16 v0, p1

    invoke-virtual {v6, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3256
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 3258
    :try_start_1
    const-string v10, "applicationUserId"

    .line 3259
    invoke-static {v10}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3260
    invoke-static {v9}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3258
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3271
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 3273
    :try_start_2
    const-string v10, "applicationKey"

    .line 3274
    invoke-static {v10}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3275
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3273
    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3285
    :goto_3
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3287
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3289
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "sdkWebViewCache"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3290
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebviewCache(Ljava/lang/String;)V

    .line 3294
    :cond_1
    :try_start_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 3295
    :catch_0
    move-exception v3

    .line 3296
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3297
    new-instance v10, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v10}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "https://www.supersonicads.com/mobile/sdk5/log?method=extraParametersToJson"

    aput-object v14, v12, v13

    invoke-virtual {v10, v12}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 3228
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    sget-object v10, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v10}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3229
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    .line 3230
    iget-object v9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    .line 3231
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISExtraParameters:Ljava/util/Map;

    goto/16 :goto_0

    .line 3233
    :cond_3
    sget-object v10, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v10}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3234
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    .line 3235
    iget-object v9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    .line 3236
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    goto/16 :goto_0

    .line 3246
    :catch_1
    move-exception v3

    .line 3247
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3248
    new-instance v10, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v10}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "https://www.supersonicads.com/mobile/sdk5/log?method=noProductType"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 3252
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 3262
    :catch_2
    move-exception v3

    .line 3263
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3264
    new-instance v10, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v10}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppUserId"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 3267
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 3276
    :catch_3
    move-exception v3

    .line 3277
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3278
    new-instance v10, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v10}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppKey"

    aput-object v13, v11, v12

    invoke-virtual {v10, v11}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_3

    .line 3281
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_3

    .line 3302
    :cond_7
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/Object;

    .line 3303
    .local v8, "result":[Ljava/lang/Object;
    const/4 v10, 0x0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 3304
    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v10

    .line 3306
    return-object v8
.end method

.method private getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 16
    .param p1, "appIds"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 3311
    const/4 v6, 0x0

    .line 3313
    .local v6, "fail":Z
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 3316
    .local v13, "result":Lorg/json/JSONObject;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 3317
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 3318
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3319
    .local v4, "ctx":Landroid/content/Context;
    invoke-static {v4}, Lcom/ironsource/environment/DeviceStatus;->getInstalledApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 3322
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3324
    .local v2, "appIdsArray":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3326
    .local v3, "bundleIds":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v9, v14, :cond_3

    .line 3327
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3329
    .local v1, "appId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 3330
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 3331
    .local v10, "isInstalled":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 3333
    .local v8, "found":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 3334
    .local v11, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 3335
    sget-object v14, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_INSTALLED:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3336
    invoke-virtual {v3, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3337
    const/4 v8, 0x1

    .line 3341
    .end local v11    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    if-nez v8, :cond_2

    .line 3342
    sget-object v14, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_INSTALLED:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3343
    invoke-virtual {v3, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3326
    .end local v8    # "found":Z
    .end local v10    # "isInstalled":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3348
    .end local v1    # "appId":Ljava/lang/String;
    :cond_3
    sget-object v14, Lcom/ironsource/sdk/controller/IronSourceWebView;->RESULT:Ljava/lang/String;

    invoke-virtual {v13, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3349
    sget-object v14, Lcom/ironsource/sdk/controller/IronSourceWebView;->REQUEST_ID:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3363
    .end local v2    # "appIdsArray":Lorg/json/JSONArray;
    .end local v3    # "bundleIds":Lorg/json/JSONObject;
    .end local v4    # "ctx":Landroid/content/Context;
    .end local v9    # "i":I
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_1
    const/4 v14, 0x2

    new-array v7, v14, [Ljava/lang/Object;

    .line 3364
    .local v7, "finalResult":[Ljava/lang/Object;
    const/4 v14, 0x0

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v14

    .line 3365
    const/4 v14, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v7, v14

    .line 3367
    return-object v7

    .line 3352
    .end local v7    # "finalResult":[Ljava/lang/Object;
    :cond_4
    const/4 v6, 0x1

    .line 3353
    :try_start_1
    const-string v14, "error"

    const-string v15, "requestId is null or empty"

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 3359
    :catch_0
    move-exception v5

    .line 3360
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    goto :goto_1

    .line 3356
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x1

    .line 3357
    const-string v14, "error"

    const-string v15, "appIds is null or empty"

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 39
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3020
    const/16 v19, 0x0

    .line 3022
    .local v19, "fail":Z
    invoke-static/range {p1 .. p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v14

    .line 3024
    .local v14, "deviceProperties":Lcom/ironsource/sdk/utils/DeviceProperties;
    new-instance v25, Lorg/json/JSONObject;

    invoke-direct/range {v25 .. v25}, Lorg/json/JSONObject;-><init>()V

    .line 3029
    .local v25, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v33, "appOrientation"

    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3032
    invoke-virtual {v14}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v13

    .line 3033
    .local v13, "deviceOem":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 3034
    const-string v33, "deviceOEM"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static {v13}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3038
    :cond_0
    invoke-virtual {v14}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v10

    .line 3039
    .local v10, "deviceModel":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 3040
    const-string v33, "deviceModel"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static {v10}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3046
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/ironsource/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 3047
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    .line 3048
    .local v4, "advertiserId":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 3050
    .local v23, "isLAT":Ljava/lang/Boolean;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_1

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    move-object/from16 v33, v0

    const-string v34, "add AID and LAT"

    invoke-static/range {v33 .. v34}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    const-string v33, "isLimitAdTrackingEnabled"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3058
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "deviceIds"

    .line 3059
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "["

    .line 3060
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "AID"

    .line 3061
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    .line 3062
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3064
    .local v5, "aid":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3068
    .end local v5    # "aid":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v14}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v11

    .line 3069
    .local v11, "deviceOSType":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 3070
    const-string v33, "deviceOs"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static {v11}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3076
    :goto_1
    invoke-virtual {v14}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 3077
    .local v12, "deviceOSVersion":Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 3078
    const-string v33, "deviceOSVersion"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3084
    :goto_2
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v31

    .line 3085
    .local v31, "ssaSDKVersion":Ljava/lang/String;
    if-eqz v31, :cond_2

    .line 3086
    const-string v33, "SDKVersion"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v31 .. v31}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3090
    :cond_2
    invoke-virtual {v14}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_3

    invoke-virtual {v14}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_3

    .line 3091
    const-string v33, "mobileCarrier"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v14}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3095
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/ironsource/environment/ConnectivityService;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3096
    .local v6, "connectionType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_d

    .line 3097
    const-string v33, "connectionType"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3103
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v33

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 3104
    .local v9, "deviceLanguage":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_4

    .line 3105
    const-string v33, "deviceLanguage"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3109
    :cond_4
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v33

    if-eqz v33, :cond_e

    .line 3110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v20

    .line 3111
    .local v20, "freeDiskSize":J
    const-string v33, "diskFreeSize"

    .line 3112
    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3113
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3111
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3119
    .end local v20    # "freeDiskSize":J
    :goto_4
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceWidth()I

    move-result v17

    .line 3120
    .local v17, "deviceWidth":I
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    .line 3121
    .local v32, "width":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_f

    .line 3123
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 3124
    .local v26, "key":Ljava/lang/StringBuilder;
    const-string v33, "deviceScreenSize"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "["

    .line 3125
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "width"

    .line 3126
    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    .line 3127
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 3130
    invoke-static/range {v32 .. v32}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3129
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3136
    .end local v26    # "key":Ljava/lang/StringBuilder;
    :goto_5
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceHeight()I

    move-result v8

    .line 3137
    .local v8, "deviceHeigh":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 3139
    .local v22, "height":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 3140
    .restart local v26    # "key":Ljava/lang/StringBuilder;
    const-string v33, "deviceScreenSize"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "["

    .line 3141
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "height"

    .line 3142
    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "]"

    .line 3143
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3145
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 3146
    invoke-static/range {v22 .. v22}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3145
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3148
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/ironsource/environment/ApplicationContext;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    .line 3149
    .local v27, "packageName":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_5

    .line 3150
    const-string v33, "bundleId"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v27 .. v27}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3153
    :cond_5
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceDensity()F

    move-result v15

    .line 3154
    .local v15, "deviceScale":F
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v30

    .line 3155
    .local v30, "scaleStr":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_6

    .line 3156
    const-string v33, "deviceScreenScale"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v30 .. v30}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3159
    :cond_6
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v24

    .line 3160
    .local v24, "isRoot":Z
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v29

    .line 3161
    .local v29, "rootStr":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_7

    .line 3162
    const-string v33, "unLocked"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v29 .. v29}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3165
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result v16

    .line 3166
    .local v16, "deviceVolume":F
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_8

    .line 3167
    const-string v33, "deviceVolume"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3169
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v7

    .line 3170
    .local v7, "ctx":Landroid/content/Context;
    sget v33, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v34, 0x13

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_9

    instance-of v0, v7, Landroid/app/Activity;

    move/from16 v33, v0

    if-eqz v33, :cond_9

    .line 3171
    const-string v33, "immersiveMode"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object v0, v7

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v33, v0

    .line 3172
    invoke-static/range {v33 .. v33}, Lcom/ironsource/environment/DeviceStatus;->isImmersiveSupported(Landroid/app/Activity;)Z

    move-result v33

    .line 3171
    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3175
    :cond_9
    const-string v33, "batteryLevel"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static {v7}, Lcom/ironsource/environment/DeviceStatus;->getBatteryLevel(Landroid/content/Context;)I

    move-result v34

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3177
    const-string v33, "mcc"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3178
    invoke-static {v7}, Lcom/ironsource/environment/ConnectivityService;->getNetworkMCC(Landroid/content/Context;)I

    move-result v34

    .line 3177
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3179
    const-string v33, "mnc"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3180
    invoke-static {v7}, Lcom/ironsource/environment/ConnectivityService;->getNetworkMNC(Landroid/content/Context;)I

    move-result v34

    .line 3179
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3182
    const-string v33, "phoneType"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3183
    invoke-static {v7}, Lcom/ironsource/environment/ConnectivityService;->getPhoneType(Landroid/content/Context;)I

    move-result v34

    .line 3182
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3184
    const-string v33, "simOperator"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3185
    invoke-static {v7}, Lcom/ironsource/environment/ConnectivityService;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3184
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3187
    const-string v33, "lastUpdateTime"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3188
    invoke-static {v7}, Lcom/ironsource/environment/ApplicationContext;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v34

    .line 3187
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3189
    const-string v33, "firstInstallTime"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3190
    invoke-static {v7}, Lcom/ironsource/environment/ApplicationContext;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v34

    .line 3189
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3191
    const-string v33, "appVersion"

    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 3192
    invoke-static {v7}, Lcom/ironsource/environment/ApplicationContext;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3191
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3199
    .end local v4    # "advertiserId":Ljava/lang/String;
    .end local v6    # "connectionType":Ljava/lang/String;
    .end local v7    # "ctx":Landroid/content/Context;
    .end local v8    # "deviceHeigh":I
    .end local v9    # "deviceLanguage":Ljava/lang/String;
    .end local v10    # "deviceModel":Ljava/lang/String;
    .end local v11    # "deviceOSType":Ljava/lang/String;
    .end local v12    # "deviceOSVersion":Ljava/lang/String;
    .end local v13    # "deviceOem":Ljava/lang/String;
    .end local v15    # "deviceScale":F
    .end local v16    # "deviceVolume":F
    .end local v17    # "deviceWidth":I
    .end local v22    # "height":Ljava/lang/String;
    .end local v23    # "isLAT":Ljava/lang/Boolean;
    .end local v24    # "isRoot":Z
    .end local v26    # "key":Ljava/lang/StringBuilder;
    .end local v27    # "packageName":Ljava/lang/String;
    .end local v29    # "rootStr":Ljava/lang/String;
    .end local v30    # "scaleStr":Ljava/lang/String;
    .end local v31    # "ssaSDKVersion":Ljava/lang/String;
    .end local v32    # "width":Ljava/lang/String;
    :goto_6
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 3200
    .local v28, "result":[Ljava/lang/Object;
    const/16 v33, 0x0

    invoke-virtual/range {v25 .. v25}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v34

    aput-object v34, v28, v33

    .line 3201
    const/16 v33, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v28, v33

    .line 3203
    return-object v28

    .line 3042
    .end local v28    # "result":[Ljava/lang/Object;
    .restart local v10    # "deviceModel":Ljava/lang/String;
    .restart local v13    # "deviceOem":Ljava/lang/String;
    :cond_a
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 3072
    .restart local v4    # "advertiserId":Ljava/lang/String;
    .restart local v11    # "deviceOSType":Ljava/lang/String;
    .restart local v23    # "isLAT":Ljava/lang/Boolean;
    :cond_b
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 3080
    .restart local v12    # "deviceOSVersion":Ljava/lang/String;
    :cond_c
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 3099
    .restart local v6    # "connectionType":Ljava/lang/String;
    .restart local v31    # "ssaSDKVersion":Ljava/lang/String;
    :cond_d
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 3115
    .restart local v9    # "deviceLanguage":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x1

    goto/16 :goto_4

    .line 3132
    .restart local v17    # "deviceWidth":I
    .restart local v32    # "width":Ljava/lang/String;
    :cond_f
    const/16 v19, 0x1

    goto/16 :goto_5

    .line 3194
    .end local v4    # "advertiserId":Ljava/lang/String;
    .end local v6    # "connectionType":Ljava/lang/String;
    .end local v9    # "deviceLanguage":Ljava/lang/String;
    .end local v10    # "deviceModel":Ljava/lang/String;
    .end local v11    # "deviceOSType":Ljava/lang/String;
    .end local v12    # "deviceOSVersion":Ljava/lang/String;
    .end local v13    # "deviceOem":Ljava/lang/String;
    .end local v17    # "deviceWidth":I
    .end local v23    # "isLAT":Ljava/lang/Boolean;
    .end local v31    # "ssaSDKVersion":Ljava/lang/String;
    .end local v32    # "width":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 3195
    .local v18, "e":Lorg/json/JSONException;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->printStackTrace()V

    .line 3196
    new-instance v33, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct/range {v33 .. v33}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v37

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-virtual/range {v33 .. v34}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6
.end method

.method private getRequestParameters()Ljava/lang/String;
    .locals 12

    .prologue
    .line 2836
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v6

    .line 2838
    .local v6, "properties":Lcom/ironsource/sdk/utils/DeviceProperties;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2840
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v8

    .line 2841
    .local v8, "sdkVer":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2842
    const-string v10, "SDKVersion"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    .line 2843
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2844
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&"

    .line 2845
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    :cond_0
    invoke-virtual {v6}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v4

    .line 2849
    .local v4, "osType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2850
    const-string v10, "deviceOs"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    .line 2851
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2852
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    :cond_1
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v9

    .line 2856
    .local v9, "serverControllerUrl":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2858
    .local v2, "downloadUri":Landroid/net/Uri;
    if-eqz v2, :cond_4

    .line 2859
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2860
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 2861
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getPort()I

    move-result v5

    .line 2862
    .local v5, "port":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_2

    .line 2863
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2866
    :cond_2
    const-string v10, "&"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "protocol"

    .line 2867
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    .line 2868
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2869
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2871
    const-string v10, "&"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "domain"

    .line 2872
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    .line 2873
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2874
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v1

    .line 2877
    .local v1, "config":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2878
    const-string v10, "&"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "controllerConfig"

    .line 2879
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    .line 2880
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2881
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    :cond_3
    const-string v10, "&"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "debug"

    .line 2885
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    .line 2886
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2887
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2890
    .end local v1    # "config":Ljava/lang/String;
    .end local v3    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    .end local v7    # "scheme":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private initLayout(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 323
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 328
    .local v0, "coverScreenParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    .line 332
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 333
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 334
    .local v1, "fp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 338
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 339
    .local v3, "mContentView":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 340
    .local v2, "lpChild2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 343
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 345
    return-void
.end method

.method private initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2408
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2409
    :cond_0
    const-string v0, "User id or Application key are missing"

    invoke-direct {p0, v0, p3, p5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2439
    :cond_1
    :goto_0
    return-void

    .line 2413
    :cond_2
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_3

    .line 2416
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setApplicationKey(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)V

    .line 2417
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUserID(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)V

    .line 2418
    invoke-direct {p0, p3, p5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createInitProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 2422
    :cond_3
    invoke-virtual {p0, p3, p5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setMissProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_4

    .line 2427
    const-string v0, "Initiating Controller"

    .line 2428
    invoke-static {p4, v0}, Lcom/ironsource/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2427
    invoke-direct {p0, v0, p3, p5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 2434
    :cond_4
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimeFinish:Z

    if-eqz v0, :cond_1

    .line 2435
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadController()V

    goto :goto_0
.end method

.method private injectJavascript(Ljava/lang/String;)V
    .locals 5
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 2757
    const-string v0, "empty"

    .line 2758
    .local v0, "catchClosure":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 2760
    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    .line 2773
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2774
    .local v1, "scriptBuilder":Ljava/lang/StringBuilder;
    const-string v3, "try{"

    .line 2775
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2776
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}catch(e){"

    .line 2777
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2778
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    .line 2779
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2781
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2783
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$5;

    invoke-direct {v3, p0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$5;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2821
    return-void

    .line 2762
    .end local v1    # "scriptBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 2763
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 2765
    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    goto :goto_0
.end method

.method private mapToJson(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3001
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3003
    .local v1, "jsObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3005
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3006
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3008
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3009
    :catch_0
    move-exception v0

    .line 3010
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 3015
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/String;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/String;
    .param p5, "key3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/String;
    .param p7, "key4"    # Ljava/lang/String;
    .param p8, "value4"    # Ljava/lang/String;
    .param p9, "key5"    # Ljava/lang/String;
    .param p10, "value5"    # Z

    .prologue
    .line 2967
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2971
    .local v3, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2972
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2975
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2976
    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2979
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2980
    invoke-static/range {p6 .. p6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2983
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2984
    invoke-static/range {p8 .. p8}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2987
    :cond_3
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2988
    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2996
    :cond_4
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2991
    :catch_0
    move-exception v2

    .line 2992
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 2993
    new-instance v4, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v4}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 2907
    new-instance v4, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2908
    .local v4, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2909
    .local v5, "success":Ljava/lang/String;
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2911
    .local v0, "fail":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2914
    .local v1, "funToCall":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 2915
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2916
    move-object v1, v5

    .line 2925
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2927
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2929
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2930
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string v6, "errMsg"

    invoke-virtual {v2, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 2935
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2937
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2938
    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    const-string v6, "errCode"

    invoke-virtual {v2, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    .line 2943
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2944
    .local v3, "script":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2946
    .end local v3    # "script":Ljava/lang/String;
    :cond_3
    return-void

    .line 2919
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2920
    move-object v1, v0

    goto :goto_0

    .line 2939
    :catch_0
    move-exception v6

    goto :goto_2

    .line 2931
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demnadSourceName"    # Ljava/lang/String;

    .prologue
    .line 3629
    const-string v0, ""

    .line 3631
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$8;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3655
    :goto_0
    const-string v1, "Initiating Controller"

    .line 3656
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3655
    invoke-direct {p0, v1, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3658
    return-void

    .line 3634
    :pswitch_0
    const-string v0, "Init RV"

    .line 3635
    goto :goto_0

    .line 3639
    :pswitch_1
    const-string v0, "Init IS"

    .line 3640
    goto :goto_0

    .line 3644
    :pswitch_2
    const-string v0, "Init OW"

    .line 3645
    goto :goto_0

    .line 3649
    :pswitch_3
    const-string v0, "Show OW Credits"

    goto :goto_0

    .line 3631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDisplayZoomControls(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p1, "s"    # Landroid/webkit/WebSettings;

    .prologue
    .line 384
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 388
    :cond_0
    return-void
.end method

.method public static setEXTERNAL_URL(Ljava/lang/String;)V
    .locals 0
    .param p0, "EXTERNAL_URL"    # Ljava/lang/String;

    .prologue
    .line 2284
    sput-object p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 2285
    return-void
.end method

.method private setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    .locals 2
    .param p1, "s"    # Landroid/webkit/WebSettings;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 397
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 400
    :cond_0
    return-void
.end method

.method private setWebDebuggingEnabled()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 405
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 407
    :cond_0
    return-void
.end method

.method private setWebViewSettings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 348
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 350
    .local v1, "s":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 351
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 352
    invoke-virtual {p0, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVerticalScrollBarEnabled(Z)V

    .line 353
    invoke-virtual {p0, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 359
    invoke-virtual {v1, v6}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 361
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 363
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 364
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 367
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 368
    const-string v2, "/data/data/org.itri.html5webview/databases/"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 375
    :try_start_0
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setDisplayZoomControls(Landroid/webkit/WebSettings;)V

    .line 376
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWebSettings - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v2, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v3, v5, [Ljava/lang/String;

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=setWebViewSettings"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setWebviewBackground(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2300
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2301
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2303
    .local v1, "keyColor":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2305
    .local v0, "bgColor":I
    const-string v3, "transparent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2306
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2309
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setBackgroundColor(I)V

    .line 2310
    return-void
.end method

.method private setWebviewCache(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3591
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3593
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 3598
    :goto_0
    return-void

    .line 3596
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0
.end method

.method private shouldNotifyDeveloper(Ljava/lang/String;)Z
    .locals 4
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 471
    const/4 v0, 0x0

    .line 474
    .local v0, "shouldNotify":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v3, "Trying to trigger a listener - no product was found"

    invoke-static {v1, v3}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return v2

    .line 479
    :cond_0
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 480
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    if-eqz v3, :cond_3

    move v0, v1

    .line 487
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 488
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v2, v0

    .line 490
    goto :goto_0

    :cond_3
    move v0, v2

    .line 480
    goto :goto_1

    .line 481
    :cond_4
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 482
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    if-eqz v3, :cond_5

    move v0, v1

    :goto_2
    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 483
    :cond_6
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 484
    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 485
    :cond_7
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v3, :cond_8

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method private toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3429
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p2}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3430
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3432
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3433
    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$6;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3441
    :cond_0
    return-void
.end method

.method private triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p3, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2660
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2661
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/ironsource/sdk/controller/IronSourceWebView$4;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2688
    :cond_0
    return-void
.end method


# virtual methods
.method public assetCached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2702
    const-string v1, "file"

    const-string v3, "path"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2703
    .local v11, "params":Ljava/lang/String;
    const-string v0, "assetCached"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2704
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2705
    return-void
.end method

.method public assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 2708
    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2709
    .local v11, "params":Ljava/lang/String;
    const-string v0, "assetCachedFailed"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2710
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2711
    return-void
.end method

.method createJSInterface(Landroid/content/Context;)Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)V

    return-object v0
.end method

.method createMainThreadHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3662
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 3664
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    if-eqz v0, :cond_0

    .line 3665
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->release()V

    .line 3667
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 3668
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 3670
    :cond_1
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    .line 3671
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    .line 3672
    return-void
.end method

.method public deviceStatusChanged(Ljava/lang/String;)V
    .locals 13
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3477
    const-string v1, "connectionType"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3478
    .local v11, "params":Ljava/lang/String;
    const-string v0, "deviceStatusChanged"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3479
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3480
    return-void
.end method

.method public downloadController()V
    .locals 9

    .prologue
    .line 412
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "mobileController.html"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    const-string v6, ""

    .line 415
    .local v6, "controllerPath":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v7

    .line 416
    .local v7, "controllerUrl":Ljava/lang/String;
    new-instance v8, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v8, v7, v6}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .local v8, "indexHtml":Lcom/ironsource/sdk/data/SSAFile;
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    const-wide/32 v2, 0x30d40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$1;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJ)V

    .line 434
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    .line 436
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->isMobileControllerThreadLive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Mobile Controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadMobileControllerFile(Lcom/ironsource/sdk/data/SSAFile;)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v1, "Download Mobile Controller: already alive"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public engageEnd(Ljava/lang/String;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3483
    const-string v0, "forceClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3484
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->closeWebView()V

    .line 3487
    :cond_0
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3488
    .local v11, "params":Ljava/lang/String;
    const-string v0, "engageEnd"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3489
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3490
    return-void
.end method

.method public enterBackground()V
    .locals 3

    .prologue
    .line 2715
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_0

    .line 2716
    const-string v1, "enterBackground"

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2717
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2719
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public enterForeground()V
    .locals 3

    .prologue
    .line 2723
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_0

    .line 2724
    const-string v1, "enterForeground"

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2725
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2727
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public forceShowInterstitial()V
    .locals 4

    .prologue
    .line 2521
    const-string v1, "forceShowInterstitial"

    const-string v2, "onShowInterstitialSuccess"

    const-string v3, "onShowInterstitialFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2522
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2523
    return-void
.end method

.method public getControllerKeyPressed()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3450
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3453
    .local v0, "keyPressed":Ljava/lang/String;
    const-string v1, "interrupt"

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setControllerKeyPressed(Ljava/lang/String;)V

    .line 3455
    return-object v0
.end method

.method public getCurrentActivityContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/content/MutableContextWrapper;

    .line 2831
    .local v0, "mctx":Landroid/content/MutableContextWrapper;
    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method public getDebugMode()I
    .locals 1

    .prologue
    .line 465
    sget v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDebugMode:I

    return v0
.end method

.method getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->getInstance(Ljava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 3562
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .prologue
    .line 2557
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsAppKey:Ljava/lang/String;

    .line 2558
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsUserId:Ljava/lang/String;

    .line 2560
    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2562
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v4, "Show OW Credits"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2563
    return-void
.end method

.method public getOrientationState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOrientationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;
    .locals 1

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public getState()Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .locals 1

    .prologue
    .line 3624
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method

.method public handleSearchKeysURLs(Ljava/lang/String;)Z
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3601
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v2

    .line 3603
    .local v2, "searchKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3605
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3606
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3607
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3608
    const/4 v3, 0x1

    .line 3616
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return v3

    .line 3612
    :catch_0
    move-exception v0

    .line 3613
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3616
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 3570
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->onHideCustomView()V

    .line 3571
    return-void
.end method

.method public inCustomView()Z
    .locals 1

    .prologue
    .line 3566
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ironsource/sdk/listeners/OnInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2468
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    .line 2469
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    .line 2470
    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISExtraParameters:Ljava/util/Map;

    .line 2471
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    .line 2474
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialAppKey(Ljava/lang/String;)V

    .line 2475
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialUserId(Ljava/lang/String;)V

    .line 2476
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialExtraParams(Ljava/util/Map;)V

    .line 2478
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportInitInterstitial(Z)V

    .line 2480
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v4, "Init IS"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2533
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    .line 2534
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    .line 2535
    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    .line 2536
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2538
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferWallExtraParams(Ljava/util/Map;)V

    .line 2540
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 2542
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v4, "Init OW"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "demandSourceName"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    .prologue
    .line 2446
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVAppKey:Ljava/lang/String;

    .line 2447
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVUserId:Ljava/lang/String;

    .line 2448
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    .line 2449
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVAppKey(Ljava/lang/String;)V

    .line 2450
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVUserId(Ljava/lang/String;)V

    .line 2452
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v4, "Init RV"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    return-void
.end method

.method initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interceptedUrlToStore()V
    .locals 2

    .prologue
    .line 2750
    const-string v1, "interceptedUrlToStore"

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2751
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2752
    return-void
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 2511
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsInterstitialAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public load(I)V
    .locals 13
    .param p1, "loadAttemp"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2318
    :try_start_0
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2325
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2327
    .local v7, "controllerPath":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2328
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2331
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getRequestParameters()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRequestParameters:Ljava/lang/String;

    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRequestParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2337
    .local v8, "controllerPathWithParams":Ljava/lang/String;
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;

    const-wide/32 v2, 0xc350

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/sdk/controller/IronSourceWebView$2;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJI)V

    .line 2382
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    .line 2386
    :try_start_1
    invoke-virtual {p0, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2393
    :goto_1
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2399
    .end local v8    # "controllerPathWithParams":Ljava/lang/String;
    :goto_2
    return-void

    .line 2319
    .end local v7    # "controllerPath":Ljava/lang/String;
    .end local v10    # "file":Ljava/io/File;
    :catch_0
    move-exception v9

    .line 2320
    .local v9, "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController:: load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadBlank"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 2387
    .end local v9    # "e":Ljava/lang/Throwable;
    .restart local v7    # "controllerPath":Ljava/lang/String;
    .restart local v8    # "controllerPathWithParams":Ljava/lang/String;
    .restart local v10    # "file":Ljava/io/File;
    :catch_1
    move-exception v9

    .line 2388
    .restart local v9    # "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController:: load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadWithPath"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 2396
    .end local v8    # "controllerPathWithParams":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v1, "load(): Mobile Controller HTML Does not exist"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=htmlControllerDoesNotExistOnFileSystem"

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public loadInterstitial()V
    .locals 4

    .prologue
    .line 2488
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->isInterstitialAdAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2490
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportLoadInterstitial(Z)V

    .line 2492
    const-string v1, "loadInterstitial"

    const-string v2, "onLoadInterstitialSuccess"

    const-string v3, "onLoadInterstitialFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2493
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2507
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2497
    :cond_1
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2499
    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$3;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$3;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public nativeNavigationPressed(Ljava/lang/String;)V
    .locals 13
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2739
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2740
    .local v11, "params":Ljava/lang/String;
    const-string v0, "nativeNavigationPressed"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2741
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2742
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    return-void
.end method

.method public onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V
    .locals 6
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    const/4 v5, 0x0

    .line 3389
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobileController.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3391
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 3395
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSources()Ljava/util/Collection;

    move-result-object v1

    .line 3396
    .local v1, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 3397
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3398
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_0

    .line 3402
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_1
    iget-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISmiss:Z

    if-eqz v2, :cond_2

    .line 3403
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v2, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3406
    :cond_2
    iget-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    if-eqz v2, :cond_3

    .line 3407
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v2, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3410
    :cond_3
    iget-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    if-eqz v2, :cond_4

    .line 3411
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v2, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3417
    .end local v1    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    :cond_4
    :goto_1
    return-void

    .line 3415
    :cond_5
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getErrMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V
    .locals 2
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    .line 3377
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3379
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V

    .line 3383
    :goto_0
    return-void

    .line 3381
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->assetCached(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3799
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 3800
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onBackButtonPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3801
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 3807
    :goto_0
    return v0

    .line 3803
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3807
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public pageFinished()V
    .locals 2

    .prologue
    .line 2745
    const-string v1, "pageFinished"

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2746
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2747
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 3530
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 3532
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3540
    :cond_0
    :goto_0
    return-void

    .line 3533
    :catch_0
    move-exception v0

    .line 3534
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: pause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3535
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewPause"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3511
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3513
    return-void
.end method

.method public removeVideoEventsListener()V
    .locals 1

    .prologue
    .line 2294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    .line 2295
    return-void
.end method

.method public restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V
    .locals 12
    .param p1, "state"    # Lcom/ironsource/sdk/data/AdUnitsState;

    .prologue
    const/4 v11, -0x1

    .line 3713
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedStateLocker:Ljava/lang/Object;

    monitor-enter v8

    .line 3715
    :try_start_0
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->shouldRestore()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v9, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v7, v9}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 3717
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreState(state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedProduct()I

    move-result v5

    .line 3721
    .local v5, "lastAd":I
    if-eq v5, v11, :cond_6

    .line 3725
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_4

    .line 3726
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v9, "onRVAdClosed()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3728
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceName()Ljava/lang/String;

    move-result-object v2

    .line 3729
    .local v2, "demandSourceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    if-eqz v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3730
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    invoke-interface {v7, v2}, Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;->onRVAdClosed(Ljava/lang/String;)V

    .line 3747
    .end local v2    # "demandSourceName":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, -0x1

    invoke-virtual {p1, v7}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 3748
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceName(Ljava/lang/String;)V

    .line 3755
    :goto_1
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->isInterstitialInitSuccess()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3757
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v9, "onInterstitialAvailability(false)"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    if-eqz v7, :cond_1

    .line 3763
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialAppKey()Ljava/lang/String;

    move-result-object v0

    .line 3764
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialUserId()Ljava/lang/String;

    move-result-object v6

    .line 3765
    .local v6, "userId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialExtraParams()Ljava/util/Map;

    move-result-object v4

    .line 3767
    .local v4, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initInterstitial(appKey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", userId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", extraParam:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3768
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    invoke-virtual {p0, v0, v6, v4, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnInterstitialListener;)V

    .line 3774
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v4    # "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "userId":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVAppKey()Ljava/lang/String;

    move-result-object v0

    .line 3775
    .restart local v0    # "appKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVUserId()Ljava/lang/String;

    move-result-object v6

    .line 3777
    .restart local v6    # "userId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    invoke-static {v7}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSources()Ljava/util/Collection;

    move-result-object v3

    .line 3778
    .local v3, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/sdk/data/DemandSource;

    .line 3779
    .local v1, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 3780
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v2

    .line 3781
    .restart local v2    # "demandSourceName":Ljava/lang/String;
    iget-object v9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v10, "onRVNoMoreOffers()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3782
    iget-object v9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    invoke-interface {v9, v2}, Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    .line 3783
    iget-object v9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    invoke-virtual {p0, v0, v6, v2, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;)V

    goto :goto_2

    .line 3792
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .end local v2    # "demandSourceName":Ljava/lang/String;
    .end local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    .end local v5    # "lastAd":I
    .end local v6    # "userId":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3734
    .restart local v5    # "lastAd":I
    :cond_4
    :try_start_1
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_5

    .line 3735
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v9, "onInterstitialAdClosed()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3736
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    if-eqz v7, :cond_0

    .line 3737
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnInitInterstitialListener:Lcom/ironsource/sdk/listeners/OnInterstitialListener;

    invoke-interface {v7}, Lcom/ironsource/sdk/listeners/OnInterstitialListener;->onInterstitialClose()V

    goto/16 :goto_0

    .line 3740
    :cond_5
    sget-object v7, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v7}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 3741
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v9, "onOWAdClosed()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v7, :cond_0

    .line 3743
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    invoke-interface {v7}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto/16 :goto_0

    .line 3750
    :cond_6
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v9, "No ad was opened"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3787
    .restart local v0    # "appKey":Ljava/lang/String;
    .restart local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    .restart local v6    # "userId":Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 3790
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    .end local v5    # "lastAd":I
    .end local v6    # "userId":Ljava/lang/String;
    :cond_8
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 3792
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3793
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 3544
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    .line 3546
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3552
    :cond_0
    :goto_0
    return-void

    .line 3547
    :catch_0
    move-exception v0

    .line 3548
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewResume"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public runGenericFunction(Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3460
    .local p2, "keyValPairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    .line 3462
    const-string v2, "initRewardedVideo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3464
    const-string v2, "demandSourceName"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3465
    .local v0, "demandSourceName":Ljava/lang/String;
    const-string v2, "applicationUserId"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnRewardedVideoListener:Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/DSRewardedVideoListener;)V

    .line 3474
    .end local v0    # "demandSourceName":Ljava/lang/String;
    :goto_0
    return-void

    .line 3467
    :cond_0
    const-string v2, "showRewardedVideo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3469
    const-string v2, "demandSourceName"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 3471
    :cond_1
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->mapToJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onGenericFunctionSuccess"

    const-string v4, "onGenericFunctionFail"

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3472
    .local v1, "script":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 3811
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3812
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setControllerKeyPressed(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3444
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3445
    return-void
.end method

.method public setDebugMode(I)V
    .locals 0
    .param p1, "debugMode"    # I

    .prologue
    .line 445
    sput p1, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDebugMode:I

    .line 446
    return-void
.end method

.method setMissProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2642
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_1

    .line 2643
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getInstance(Landroid/app/Activity;)Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/ironsource/sdk/agent/IronSourceAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 2644
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 2645
    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 2654
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMissProduct("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    return-void

    .line 2647
    :cond_1
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_2

    .line 2648
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISmiss:Z

    goto :goto_0

    .line 2649
    :cond_2
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_3

    .line 2650
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    goto :goto_0

    .line 2651
    :cond_3
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v1, :cond_0

    .line 2652
    iput-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    goto :goto_0
.end method

.method public setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    .prologue
    .line 3558
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    .line 3559
    return-void
.end method

.method public setOrientationState(Ljava/lang/String;)V
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOrientationState:Ljava/lang/String;

    .line 495
    return-void
.end method

.method public setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    .prologue
    .line 3620
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    .line 3621
    return-void
.end method

.method public setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ironsource/sdk/controller/VideoEventsListener;

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    .line 2290
    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 2516
    const-string v1, "showInterstitial"

    const-string v2, "onShowInterstitialSuccess"

    const-string v3, "onShowInterstitialFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2517
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2518
    return-void
.end method

.method public showOfferWall(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2547
    .local p1, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    .line 2548
    const-string v1, "showOfferWall"

    const-string v2, "onShowOfferWallSuccess"

    const-string v3, "onShowOfferWallFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2549
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2550
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 6
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2692
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2693
    .local v1, "rvParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2694
    const-string v3, "demandSourceName"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    :cond_0
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2697
    .local v0, "params":Ljava/lang/String;
    const-string v3, "showRewardedVideo"

    const-string v4, "onShowRewardedVideoSuccess"

    const-string v5, "onShowRewardedVideoFail"

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2698
    .local v2, "script":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2699
    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 3517
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3526
    :goto_0
    return-void

    .line 3520
    :catch_0
    move-exception v0

    .line 3523
    .local v0, "e1":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterConnectionReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 3518
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public viewableChange(ZLjava/lang/String;)V
    .locals 13
    .param p1, "visibility"    # Z
    .param p2, "webview"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2730
    const-string v1, "webview"

    const-string v9, "isViewable"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 2734
    .local v11, "params":Ljava/lang/String;
    const-string v0, "viewableChange"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2735
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2736
    return-void
.end method
