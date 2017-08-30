.class Lcom/oneaudience/sdk/m;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneaudience/sdk/m$f;,
        Lcom/oneaudience/sdk/m$i;,
        Lcom/oneaudience/sdk/m$d;,
        Lcom/oneaudience/sdk/m$g;,
        Lcom/oneaudience/sdk/m$c;,
        Lcom/oneaudience/sdk/m$e;,
        Lcom/oneaudience/sdk/m$b;,
        Lcom/oneaudience/sdk/m$a;,
        Lcom/oneaudience/sdk/m$h;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I


# instance fields
.field private final c:J

.field private final d:J

.field private final e:Lcom/oneaudience/sdk/m$f;

.field private f:J

.field private g:Landroid/content/Context;

.field private final h:I

.field private i:Lcom/oneaudience/sdk/m$a;

.field private j:Landroid/widget/ProgressBar;

.field private k:Lcom/oneaudience/sdk/m$h;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private final p:Landroid/os/Handler;

.field private final q:Landroid/os/Handler;

.field private final r:Landroid/os/Handler;

.field private final s:Landroid/view/animation/AlphaAnimation;

.field private final t:Landroid/view/animation/AlphaAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneaudience/sdk/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    const-string v0, "#323232"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oneaudience/sdk/m;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/oneaudience/sdk/m;->l:Z

    iput-boolean v0, p0, Lcom/oneaudience/sdk/m;->m:Z

    iput-boolean v3, p0, Lcom/oneaudience/sdk/m;->n:Z

    iput-boolean v0, p0, Lcom/oneaudience/sdk/m;->o:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneaudience/sdk/m;->p:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneaudience/sdk/m;->q:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneaudience/sdk/m;->r:Landroid/os/Handler;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/oneaudience/sdk/m;->s:Landroid/view/animation/AlphaAnimation;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/oneaudience/sdk/m;->t:Landroid/view/animation/AlphaAnimation;

    iput-object p1, p0, Lcom/oneaudience/sdk/m;->g:Landroid/content/Context;

    iput-wide p4, p0, Lcom/oneaudience/sdk/m;->f:J

    iput-wide p2, p0, Lcom/oneaudience/sdk/m;->c:J

    iget-wide v0, p0, Lcom/oneaudience/sdk/m;->c:J

    iput-wide v0, p0, Lcom/oneaudience/sdk/m;->d:J

    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->f()V

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneaudience/sdk/m;->h:I

    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->g()Lcom/oneaudience/sdk/m$a;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->i()Landroid/widget/ProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/m;->j:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->h()Lcom/oneaudience/sdk/m$f;

    move-result-object v0

    iput-object v0, p0, Lcom/oneaudience/sdk/m;->e:Lcom/oneaudience/sdk/m$f;

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-virtual {v0, v4}, Lcom/oneaudience/sdk/m$a;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->e:Lcom/oneaudience/sdk/m$f;

    invoke-virtual {v0, v4}, Lcom/oneaudience/sdk/m$f;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->k()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneaudience/sdk/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->j:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->l()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneaudience/sdk/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->e:Lcom/oneaudience/sdk/m$f;

    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->j()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneaudience/sdk/m;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/oneaudience/sdk/m;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private a(J)V
    .locals 5

    sget-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    const-string v1, "Showing Dismiss X in %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/oneaudience/sdk/b/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->e:Lcom/oneaudience/sdk/m$f;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m$f;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneaudience/sdk/m;->n:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneaudience/sdk/m;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->p:Landroid/os/Handler;

    new-instance v1, Lcom/oneaudience/sdk/m$1;

    invoke-direct {v1, p0}, Lcom/oneaudience/sdk/m$1;-><init>(Lcom/oneaudience/sdk/m;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->e()V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oneaudience/sdk/m;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneaudience/sdk/m;->b(J)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->k:Lcom/oneaudience/sdk/m$h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->k:Lcom/oneaudience/sdk/m$h;

    invoke-interface {v0, p0, p1}, Lcom/oneaudience/sdk/m$h;->a(Lcom/oneaudience/sdk/m;Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oneaudience/sdk/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneaudience/sdk/m;->o:Z

    return p1
.end method

.method private b(J)V
    .locals 3

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->r:Landroid/os/Handler;

    new-instance v1, Lcom/oneaudience/sdk/m$5;

    invoke-direct {v1, p0}, Lcom/oneaudience/sdk/m$5;-><init>(Lcom/oneaudience/sdk/m;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lcom/oneaudience/sdk/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneaudience/sdk/m;->e()V

    return-void
.end method

.method static synthetic b(Lcom/oneaudience/sdk/m;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneaudience/sdk/m;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/oneaudience/sdk/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneaudience/sdk/m;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$f;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->e:Lcom/oneaudience/sdk/m$f;

    return-object v0
.end method

.method static synthetic c(Lcom/oneaudience/sdk/m;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/m;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/oneaudience/sdk/m;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$h;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->k:Lcom/oneaudience/sdk/m$h;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m$a;->getScrollY()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->e:Lcom/oneaudience/sdk/m$f;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m$f;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m;->invalidate()V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->e:Lcom/oneaudience/sdk/m$f;

    iget-object v1, p0, Lcom/oneaudience/sdk/m;->t:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/oneaudience/sdk/m$f;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m$a;->a()V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    const-wide/16 v2, 0x12c

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->t:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->t:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->t:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/oneaudience/sdk/m$2;

    invoke-direct {v1, p0}, Lcom/oneaudience/sdk/m$2;-><init>(Lcom/oneaudience/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->s:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->s:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->s:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/oneaudience/sdk/m$3;

    invoke-direct {v1, p0}, Lcom/oneaudience/sdk/m$3;-><init>(Lcom/oneaudience/sdk/m;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic f(Lcom/oneaudience/sdk/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneaudience/sdk/m;->n:Z

    return v0
.end method

.method static synthetic g(Lcom/oneaudience/sdk/m;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneaudience/sdk/m;->f:J

    return-wide v0
.end method

.method private g()Lcom/oneaudience/sdk/m$a;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/oneaudience/sdk/m$a;

    iget-object v1, p0, Lcom/oneaudience/sdk/m;->g:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/oneaudience/sdk/m$a;-><init>(Lcom/oneaudience/sdk/m;Landroid/content/Context;)V

    new-instance v1, Lcom/oneaudience/sdk/m$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneaudience/sdk/m$b;-><init>(Lcom/oneaudience/sdk/m;Lcom/oneaudience/sdk/m$1;)V

    invoke-virtual {v0, v1}, Lcom/oneaudience/sdk/m$a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m$a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Lcom/oneaudience/sdk/m$a;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/oneaudience/sdk/m$a;->setHorizontalScrollBarEnabled(Z)V

    return-object v0
.end method

.method static synthetic h(Lcom/oneaudience/sdk/m;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneaudience/sdk/m;->d:J

    return-wide v0
.end method

.method private h()Lcom/oneaudience/sdk/m$f;
    .locals 5

    new-instance v0, Lcom/oneaudience/sdk/m$f;

    iget-object v1, p0, Lcom/oneaudience/sdk/m;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneaudience/sdk/m$f;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/oneaudience/sdk/m;->h:I

    iget v2, p0, Lcom/oneaudience/sdk/m;->h:I

    iget v3, p0, Lcom/oneaudience/sdk/m;->h:I

    iget v4, p0, Lcom/oneaudience/sdk/m;->h:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneaudience/sdk/m$f;->setPadding(IIII)V

    new-instance v1, Lcom/oneaudience/sdk/m$4;

    invoke-direct {v1, p0}, Lcom/oneaudience/sdk/m$4;-><init>(Lcom/oneaudience/sdk/m;)V

    invoke-virtual {v0, v1}, Lcom/oneaudience/sdk/m$f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private i()Landroid/widget/ProgressBar;
    .locals 4

    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/oneaudience/sdk/m;->g:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010077

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/m;->a(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic i(Lcom/oneaudience/sdk/m;)Lcom/oneaudience/sdk/m$a;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    return-object v0
.end method

.method static synthetic j(Lcom/oneaudience/sdk/m;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->g:Landroid/content/Context;

    return-object v0
.end method

.method private j()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private k()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private l()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m$a;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/m$a;->goBack()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/oneaudience/sdk/m$h;)V
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/m;->k:Lcom/oneaudience/sdk/m$h;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-virtual {v0, p2}, Lcom/oneaudience/sdk/m$a;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oneaudience/sdk/b/b;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    sget-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    const-string v1, "LOADING BASE: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v0, v1, v5}, Lcom/oneaudience/sdk/b/d;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    move-object v1, p2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oneaudience/sdk/m$a;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading HTML from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-virtual {v0, p2}, Lcom/oneaudience/sdk/m$a;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneaudience/sdk/m;->i:Lcom/oneaudience/sdk/m$a;

    invoke-virtual {v0, p2}, Lcom/oneaudience/sdk/m$a;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneaudience/sdk/m;->l:Z

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->j:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/oneaudience/sdk/m;->s:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    sget-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    const-string v1, "#### onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    const-string v1, "#### onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/m;->q:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    sget-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    const-string v1, "#### onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "instance_state_dismiss_animated"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneaudience/sdk/m;->o:Z

    const-string v0, "popupadview_instance_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    sget-object v0, Lcom/oneaudience/sdk/m;->a:Ljava/lang/String;

    const-string v1, "#### onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/oneaudience/sdk/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "popupadview_instance_state"

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "instance_state_dismiss_animated"

    iget-boolean v2, p0, Lcom/oneaudience/sdk/m;->o:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
