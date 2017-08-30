.class public Lcom/tapjoy/mraid/view/MraidView;
.super Lcom/tapjoy/mraid/view/BasicWebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/mraid/view/MraidView$7;,
        Lcom/tapjoy/mraid/view/MraidView$a;,
        Lcom/tapjoy/mraid/view/MraidView$NewLocationReciever;,
        Lcom/tapjoy/mraid/view/MraidView$c;,
        Lcom/tapjoy/mraid/view/MraidView$b;,
        Lcom/tapjoy/mraid/view/MraidView$Action;,
        Lcom/tapjoy/mraid/view/MraidView$customCloseState;,
        Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;,
        Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field public static final MRAID_ID:I = 0x66

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static c:[I

.field private static final d:[Ljava/lang/String;

.field private static t:Lcom/tapjoy/mraid/util/MraidPlayer;


# instance fields
.field private A:Landroid/content/Context;

.field private B:Landroid/widget/RelativeLayout;

.field private C:Landroid/widget/VideoView;

.field private D:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private E:Landroid/widget/ProgressBar;

.field private F:Landroid/os/Handler;

.field private G:Z

.field a:Landroid/webkit/WebViewClient;

.field b:Landroid/webkit/WebChromeClient;

.field private e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

.field private f:Z

.field private g:Z

.field private h:Lcom/tapjoy/mraid/controller/Utility;

.field private i:F

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

.field private r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

.field private s:Lcom/tapjoy/mraid/listener/MraidViewListener;

.field private final u:Ljava/util/HashSet;

.field private v:I

.field private w:I

.field private x:Ljava/lang/Thread;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->c:[I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const-string v1, ".mpg"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->d:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x101011f
        0x1010120
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->u:Ljava/util/HashSet;

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->v:I

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Z

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->a:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->b:Landroid/webkit/WebChromeClient;

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tapjoy/mraid/view/BasicWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-boolean v2, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->u:Ljava/util/HashSet;

    iput v2, p0, Lcom/tapjoy/mraid/view/MraidView;->v:I

    iput v2, p0, Lcom/tapjoy/mraid/view/MraidView;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    iput-boolean v2, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Z

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->a:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView;->c:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-lez v1, :cond_0

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v3, v1, v2}, Lcom/tapjoy/mraid/controller/Utility;->setMaxSize(II)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/mraid/listener/MraidViewListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->UNKNOWN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->u:Ljava/util/HashSet;

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->v:I

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    iput-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Z

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$2;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$4;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->a:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$5;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, p2}, Lcom/tapjoy/mraid/view/MraidView;->setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->initialize()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->l:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TapjoyCachedAssetData;)Landroid/webkit/WebResourceResponse;
    .locals 1

    invoke-static {p0}, Lcom/tapjoy/mraid/view/MraidView;->b(Lcom/tapjoy/TapjoyCachedAssetData;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->E:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/listener/MraidViewListener;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-eq v0, v1, :cond_4

    const-string v0, "expand_dimensions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "expand_properties"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/controller/Abstract$Properties;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v7, v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v6, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v4, v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v4, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eq v8, p0, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/tapjoy/mraid/view/MraidView;->p:I

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/tapjoy/mraid/view/MraidView$3;

    invoke-direct {v4, p0}, Lcom/tapjoy/mraid/view/MraidView$3;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x65

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setId(I)V

    iget v7, v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iget v8, v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    invoke-virtual {v3, v7, v8, v5, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {v3, p0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v2, v1, Lcom/tapjoy/mraid/controller/Abstract$Properties;->useBackground:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/tapjoy/mraid/controller/Abstract$Properties;->backgroundColor:I

    iget v4, v1, Lcom/tapjoy/mraid/controller/Abstract$Properties;->backgroundOpacity:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x10000000

    mul-int/2addr v4, v5

    or-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_2
    iget-boolean v1, v1, Lcom/tapjoy/mraid/controller/Abstract$Properties;->useCustomClose:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->showCloseImageButton()V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.fireChangeEvent({ state: \'expanded\', size: { width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    int-to-float v2, v2

    iget v3, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    int-to-float v0, v0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",x:0,y:0} });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doExpand: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->c()V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onExpand()Z

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "top-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36"

    :cond_1
    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "top-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18"

    goto :goto_1

    :cond_3
    const-string v1, "top-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = 1"

    goto :goto_1

    :cond_4
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18"

    goto :goto_1

    :cond_5
    const-string v1, "bottom-right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36"

    goto :goto_1

    :cond_6
    const-string v1, "bottom-left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "document.getElementById(\"closeButton\").style.left = 1;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;"

    goto :goto_1

    :cond_7
    const-string v1, "bottom-center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 -18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;"

    goto :goto_1

    :cond_8
    const-string v0, "MRAIDView"

    const-string v1, "Reposition of close button failed."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tapjoy/mraid/view/MraidView;)F
    .locals 1

    iget v0, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    return v0
.end method

.method static synthetic b(Lcom/tapjoy/mraid/view/MraidView;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->m:I

    return p1
.end method

.method private static b(Lcom/tapjoy/TapjoyCachedAssetData;)Landroid/webkit/WebResourceResponse;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCachedAssetData;->getLocalFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyCachedAssetData;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b()V
    .locals 4

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onResizeClose()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x:0,y:0}});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeResized: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    const-string v0, "top-right"

    invoke-direct {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->d()V

    return-void
.end method

.method static synthetic b(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/tapjoy/mraid/view/MraidView;->d:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->v:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->w:I

    if-eq v0, v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewState()Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    move-result-object v2

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v2, "top-right"

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/tapjoy/mraid/view/MraidView;->resizeOrientation(IILjava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/mraid/view/MraidView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->G:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->requestLayout()V

    return-void
.end method

.method static synthetic e(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method static synthetic f(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->b()V

    return-void
.end method

.method static synthetic g(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    invoke-interface {v0}, Lcom/tapjoy/mraid/listener/MraidViewListener;->onClose()Z

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getContentViewHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic h(Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/controller/Utility;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    return-object v0
.end method

.method static synthetic i(Lcom/tapjoy/mraid/view/MraidView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic k(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/tapjoy/mraid/view/MraidView;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->E:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic m(Lcom/tapjoy/mraid/view/MraidView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Z

    return v0
.end method

.method static synthetic n(Lcom/tapjoy/mraid/view/MraidView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->c()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->resetContents()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mraidview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeExpanded: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->DEFAULT:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->removeCloseImageButton()V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->z:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public clearView()V
    .locals 0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->reset()V

    invoke-super {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->clearView()V

    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public createCloseImageButton()V
    .locals 2

    const-string v0, "window.mraidview.createCss();"

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    const-string v0, "MRAIDView"

    const-string v1, "Creating close button."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public expand(Lcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Lcom/tapjoy/mraid/controller/Abstract$Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_dimensions"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expand_properties"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getCloseButtonState()Lcom/tapjoy/mraid/view/MraidView$customCloseState;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getPlacementType()Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    return-object v0
.end method

.method getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;
    .locals 2

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->t:Lcom/tapjoy/mraid/util/MraidPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView;->t:Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->releasePlayer()V

    :cond_0
    new-instance v0, Lcom/tapjoy/mraid/util/MraidPlayer;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tapjoy/mraid/util/MraidPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tapjoy/mraid/view/MraidView;->t:Lcom/tapjoy/mraid/util/MraidPlayer;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    div-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewState()Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    return-object v0
.end method

.method public hasMraidTag(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "<\\s*script[^>]+mraid\\.js"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public initialize()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->i:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->g:Z

    new-instance v0, Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/mraid/controller/Utility;-><init>(Lcom/tapjoy/mraid/view/MraidView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    const-string v1, "MRAIDUtilityControllerBridge"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->a:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->b:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->v:I

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->w:I

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->z:I

    :cond_1
    return-void
.end method

.method public injectMraidJavaScript(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isExpanded()Z
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMraid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    return v0
.end method

.method public isPageFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->g:Z

    return v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<html>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    iput-boolean v3, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    const-string v0, "mraid.js"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {p0, p2}, Lcom/tapjoy/mraid/view/MraidView;->hasMraidTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->f:Z

    move v0, v1

    :goto_1
    if-ltz v0, :cond_a

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "<script"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    move v2, v3

    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    add-int v6, v1, v2

    add-int v7, v1, v2

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "/>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    :cond_1
    :goto_4
    if-gez v5, :cond_7

    const-string v2, "MRAIDView"

    const-string v5, "wrapping fragment"

    invoke-static {v2, v5}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "<html>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "<head>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "<meta name=\'viewport\' content=\'user-scalable=no initial-scale=1.0\' />"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "<title>Advertisement</title>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "</head>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "<div align=\"center\"> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "<script type=text/javascript>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "mraid.js"

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "js/mraid.js"

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "</script>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_5
    const-string v0, "MRAIDView"

    const-string v1, "injected js/mraid.js"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lcom/tapjoy/mraid/view/BasicWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    :cond_5
    add-int v6, v1, v2

    add-int v7, v1, v2

    add-int/lit8 v7, v7, 0x9

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "</script>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x9

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_7
    const-string v0, "<head>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3

    const-string v0, "mraid.js"

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->getResource(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "js/mraid.js"

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyUtil;->copyTextFromJarIntoString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    add-int/lit8 v2, v1, 0x6

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "<script type=\'text/javascript\'>"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "</script>"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_9
    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_a
    move v0, v1

    goto/16 :goto_2
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$1;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/mraid/view/MraidView$1;-><init>(Lcom/tapjoy/mraid/view/MraidView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrlStandard(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->G:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->n:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/tapjoy/mraid/view/MraidView;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->G:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Z

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$b;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$b;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    invoke-super {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->y:Z

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->stopAllListeners()V

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/tapjoy/mraid/view/BasicWebView;->onDetachedFromWindow()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 3

    iget-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->k:Z

    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->k:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    if-ltz v1, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    const-string v1, "window.mraidview.fireChangeEvent({ keyboardState: true});"

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/tapjoy/mraid/view/MraidView;->k:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    if-ltz v1, :cond_1

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v1

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    const-string v1, "window.mraidview.fireChangeEvent({ keyboardState: false});"

    invoke-virtual {p0, v1}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    if-gez v1, :cond_2

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContentViewHeight()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/mraid/view/MraidView;->j:I

    :cond_2
    iput-boolean v0, p0, Lcom/tapjoy/mraid/view/MraidView;->k:Z

    return-void
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/tapjoy/mraid/view/MraidView;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    new-instance v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    invoke-direct {v6}, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;-><init>()V

    iput v2, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v2, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getWidth()I

    move-result v0

    iput v0, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getHeight()I

    move-result v0

    iput v0, v6, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    const-string v7, "fullscreen"

    const-string v8, "exit"

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v8}, Lcom/tapjoy/mraid/view/MraidView;->playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v0}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyURLConnection;->getRedirectFromURL(Ljava/lang/String;)Lcom/tapjoy/TapjoyHttpURLResponse;

    move-result-object v0

    const-string v4, "MRAIDView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "redirect: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->statusCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    invoke-static {v4}, Lcom/tapjoy/mraid/view/MraidView;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, v0, Lcom/tapjoy/TapjoyHttpURLResponse;->redirectURL:Ljava/lang/String;

    move v0, v3

    goto :goto_0

    :cond_1
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mraid Browser open:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tapjoy/mraid/view/Browser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "open_show_back"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "open_show_forward"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "open_show_refresh"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening Map Url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/mraid/util/Utils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$Action;->PLAY_AUDIO:Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView$Action;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->playAudio()V

    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/tapjoy/mraid/controller/Abstract$Dimensions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    new-instance v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    invoke-direct {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;-><init>()V

    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    sget-object v3, Lcom/tapjoy/mraid/view/MraidView$Action;->PLAY_VIDEO:Lcom/tapjoy/mraid/view/MraidView$Action;

    invoke-virtual {v3}, Lcom/tapjoy/mraid/view/MraidView$Action;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p6, :cond_0

    const-string v2, "expand_dimensions"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tapjoy/mraid/view/ActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_1

    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playVideoImpl(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;

    const-string v2, "expand_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getPlayer()Lcom/tapjoy/mraid/util/MraidPlayer;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/tapjoy/mraid/util/MraidPlayer;->setPlayData(Lcom/tapjoy/mraid/controller/Abstract$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->width:I

    iget v4, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->height:I

    invoke-direct {v0, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v2, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x65

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    iget v0, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->x:I

    iget v1, v1, Lcom/tapjoy/mraid/controller/Abstract$Dimensions;->y:I

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    new-instance v0, Lcom/tapjoy/mraid/view/MraidView$6;

    invoke-direct {v0, p0}, Lcom/tapjoy/mraid/view/MraidView$6;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-virtual {v3, v0}, Lcom/tapjoy/mraid/util/MraidPlayer;->setListener(Lcom/tapjoy/mraid/listener/Player;)V

    invoke-virtual {v3}, Lcom/tapjoy/mraid/util/MraidPlayer;->playVideo()V

    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeCloseImageButton()V
    .locals 2

    const-string v0, "document.getElementById(\"closeButton\").style.visibility=\"hidden\";"

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    const-string v0, "MRAIDView"

    const-string v1, "Removing close button."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->HIDDEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-void
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->EXPANDED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->a()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->invalidate()V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->deleteOldAds()V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/controller/Utility;->stopAllListeners()V

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->d()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->r:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    sget-object v1, Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;->RESIZED:Lcom/tapjoy/mraid/view/MraidView$VIEW_STATE;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->b()V

    goto :goto_0
.end method

.method public resetContents()V
    .locals 4

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getRootView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/tapjoy/mraid/view/MraidView;->d()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/tapjoy/mraid/view/MraidView;->p:I

    invoke-virtual {v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method public resize(IIIILjava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resize_width"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resize_height"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resize_x"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resize_y"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resize_allowOffScreen"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "resize_customClosePostition"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resizeOrientation(IILjava/lang/String;Z)V
    .locals 3

    iput p1, p0, Lcom/tapjoy/mraid/view/MraidView;->v:I

    iput p2, p0, Lcom/tapjoy/mraid/view/MraidView;->w:I

    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resizeOrientation to dimensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resize_width"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resize_height"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resize_allowOffScreen"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "resize_customClosePostition"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1

    invoke-super {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1

    invoke-super {p0, p1}, Lcom/tapjoy/mraid/view/BasicWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->A:Landroid/content/Context;

    return-void
.end method

.method public setListener(Lcom/tapjoy/mraid/listener/MraidViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->s:Lcom/tapjoy/mraid/listener/MraidViewListener;

    return-void
.end method

.method public setMaxSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->h:Lcom/tapjoy/mraid/controller/Utility;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/mraid/controller/Utility;->setMaxSize(II)V

    return-void
.end method

.method public setOrientationProperties(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_1

    const-string v0, "landscape"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/tapjoy/mraid/view/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public setPlacementType(Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;)V
    .locals 2

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INTERSTITIAL:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iput-object p1, p0, Lcom/tapjoy/mraid/view/MraidView;->q:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    :goto_0
    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->INLINE:Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;

    invoke-virtual {p1, v0}, Lcom/tapjoy/mraid/view/MraidView$PLACEMENT_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/mraid/view/MraidView$b;

    invoke-direct {v1, p0}, Lcom/tapjoy/mraid/view/MraidView$b;-><init>(Lcom/tapjoy/mraid/view/MraidView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->x:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "MRAIDView"

    const-string v1, "Incorrect placement type."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->F:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showCloseImageButton()V
    .locals 2

    const-string v0, "document.getElementById(\"closeButton\").style.visibility=\"visible\";"

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->injectMraidJavaScript(Ljava/lang/String;)V

    const-string v0, "MRAIDView"

    const-string v1, "Showing close button."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/mraid/view/MraidView$customCloseState;->OPEN:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    iput-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->e:Lcom/tapjoy/mraid/view/MraidView$customCloseState;

    return-void
.end method

.method public videoPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public videoViewCleanup()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->B:Landroid/widget/RelativeLayout;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->C:Landroid/widget/VideoView;

    iput-object v2, p0, Lcom/tapjoy/mraid/view/MraidView;->D:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->setVisibility(I)V

    :cond_3
    const-string v0, "javascript:try{Tapjoy.AdUnit.dispatchEvent(\'videoend\')}catch(e){}"

    invoke-virtual {p0, v0}, Lcom/tapjoy/mraid/view/MraidView;->loadUrl(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
