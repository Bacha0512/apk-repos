.class public Lcom/tapjoy/TJAdUnit;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TJAdUnit$a;,
        Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;,
        Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;
    }
.end annotation


# static fields
.field public static publisherVideoListener:Lcom/tapjoy/TJVideoListener;


# instance fields
.field private a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

.field private b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

.field private c:Landroid/content/Context;

.field private d:Lcom/tapjoy/TJAdUnitActivity;

.field private e:Lcom/tapjoy/TJAdUnitJSBridge;

.field private f:Lcom/tapjoy/mraid/view/BasicWebView;

.field private g:Lcom/tapjoy/mraid/view/MraidView;

.field private h:Landroid/widget/VideoView;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Timer;

.field private m:Ljava/util/concurrent/ScheduledFuture;

.field private n:Landroid/media/AudioManager;

.field private o:I

.field private p:I

.field private q:Ljava/lang/Runnable;

.field private r:Z

.field private s:Z

.field private volatile t:Z

.field private u:Z

.field private v:I

.field private final w:Ljava/lang/Runnable;

.field private x:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->v:I

    new-instance v0, Lcom/tapjoy/TJAdUnit$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJAdUnit$1;-><init>(Lcom/tapjoy/TJAdUnit;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnit;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;I)I
    .locals 0

    iput p1, p0, Lcom/tapjoy/TJAdUnit;->o:I

    return p1
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/TJAdUnitJSBridge;)Lcom/tapjoy/TJAdUnitJSBridge;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/mraid/view/BasicWebView;)Lcom/tapjoy/mraid/view/BasicWebView;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/BasicWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/mraid/view/MraidView;)Lcom/tapjoy/mraid/view/MraidView;
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    return-object p1
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "TJAdUnit"

    const-string v1, "detachVolumeListener"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->m:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->m:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v2, p0, Lcom/tapjoy/TJAdUnit;->m:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iput-object v2, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    return-void
.end method

.method private static a(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tapjoy/TJAdUnit;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/TJAdUnit;)I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    return v0
.end method

.method private static b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/4 v1, 0x7

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/tapjoy/TJAdUnit;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVolumeChanged()V

    return-void
.end method

.method static synthetic d(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    return v0
.end method

.method static synthetic e(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    return v0
.end method

.method static synthetic f(Lcom/tapjoy/TJAdUnit;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/BasicWebView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/BasicWebView;

    return-object v0
.end method

.method static synthetic h(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/mraid/view/MraidView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    return-object v0
.end method

.method static synthetic i(Lcom/tapjoy/TJAdUnit;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic j(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->k:Z

    return v0
.end method

.method static synthetic k(Lcom/tapjoy/TJAdUnit;)I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->i:I

    return v0
.end method

.method static synthetic l(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitJSBridge;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    return-object v0
.end method

.method static synthetic m(Lcom/tapjoy/TJAdUnit;)V
    .locals 6

    const-wide/16 v2, 0x1f4

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TJAdUnit$9;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnit$9;-><init>(Lcom/tapjoy/TJAdUnit;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic n(Lcom/tapjoy/TJAdUnit;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->x:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lcom/tapjoy/TJAdUnit;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic p(Lcom/tapjoy/TJAdUnit;)I
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->i:I

    return v0
.end method

.method static synthetic q(Lcom/tapjoy/TJAdUnit;)Lcom/tapjoy/TJAdUnitActivity;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitActivity;

    return-object v0
.end method

.method static synthetic r(Lcom/tapjoy/TJAdUnit;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->a()V

    return-void
.end method

.method static synthetic s(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    return v0
.end method

.method static synthetic t(Lcom/tapjoy/TJAdUnit;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    return v0
.end method

.method static synthetic u(Lcom/tapjoy/TJAdUnit;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    return-void
.end method


# virtual methods
.method public attachVolumeListener(ZI)V
    .locals 7

    const/4 v3, 0x3

    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attachVolumeListener: isAttached="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->a()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->n:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->p:I

    sget-object v0, Lcom/tapjoy/internal/ga;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->w:Ljava/lang/Runnable;

    int-to-long v2, p2

    int-to-long v4, p2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->m:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public clearVideo(Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tapjoy/TJAdUnit$7;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/TJAdUnit$7;-><init>(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;->onComplete(Z)V

    goto :goto_0
.end method

.method public closeRequested(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->videoPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->videoViewCleanup()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->destroy()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/BasicWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/BasicWebView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/BasicWebView;->removeAllViews()V

    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/BasicWebView;

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    invoke-virtual {v0}, Lcom/tapjoy/mraid/view/MraidView;->removeAllViews()V

    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-boolean v2, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    iput-boolean v2, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    iput-boolean v2, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/content/Context;

    iput-object v1, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p0}, Lcom/tapjoy/TJAdUnit;->a()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onClosed()V

    :cond_2
    return-void
.end method

.method public fireContentReady()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;->onContentReady()V

    :cond_0
    return-void
.end method

.method public fireOnVideoComplete()V
    .locals 2

    const-string v0, "TJAdUnit"

    const-string v1, "Firing onVideoComplete"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJVideoListener;->onVideoComplete()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoCompleted()V

    :cond_1
    return-void
.end method

.method public fireOnVideoError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing onVideoError with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/tapjoy/TJVideoListener;->onVideoError(I)V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-interface {v0, p1}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoError(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public fireOnVideoStart()V
    .locals 2

    const-string v0, "TJAdUnit"

    const-string v1, "Firing onVideoStart"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TJVideoListener;->onVideoStart()V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-interface {v0}, Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;->onVideoStart()V

    :cond_1
    return-void
.end method

.method public getBackgroundWebView()Lcom/tapjoy/mraid/view/BasicWebView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->f:Lcom/tapjoy/mraid/view/BasicWebView;

    return-object v0
.end method

.method public getCloseRequested()Z
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->closeRequested:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->v:I

    return v0
.end method

.method public getPublisherVideoListener()Lcom/tapjoy/TJVideoListener;
    .locals 1

    sget-object v0, Lcom/tapjoy/TJAdUnit;->publisherVideoListener:Lcom/tapjoy/TJVideoListener;

    return-object v0
.end method

.method public getVideoSeekTime()I
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->i:I

    return v0
.end method

.method public getVideoView()Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    return-object v0
.end method

.method public getVolume()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    int-to-double v0, v0

    iget v2, p0, Lcom/tapjoy/TJAdUnit;->p:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Lcom/tapjoy/mraid/view/MraidView;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    return-object v0
.end method

.method public varargs invokeBridgeCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public isAdUnitConstructed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    return v0
.end method

.method public isLockedOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->r:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->o:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Lcom/tapjoy/TJPlacementData;)V
    .locals 1

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/tapjoy/TJAdUnit$2;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/TJAdUnit$2;-><init>(Lcom/tapjoy/TJAdUnit;Lcom/tapjoy/TJPlacementData;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->q:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public loadVideoUrl(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/TJAdUnit$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$5;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "TJAdUnit"

    const-string v1, "video -- onCompletion"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoCompletion()V

    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoComplete()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->j:Z

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    const/4 v1, 0x1

    const-string v0, "TJAdUnit"

    new-instance v2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error encountered when instantiating the VideoView: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnit;->j:Z

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    packed-switch p2, :pswitch_data_0

    const-string v0, "MEDIA_ERROR_UNKNOWN"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch p3, :sswitch_data_0

    const-string v0, "MEDIA_ERROR_EXTRA_UNKNOWN"

    :goto_1
    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v2, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoError(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJAdUnit;->fireOnVideoError(Ljava/lang/String;)V

    if-eq p2, v1, :cond_0

    const/16 v0, -0x3ec

    if-ne p3, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_2
    return v0

    :pswitch_0
    const-string v0, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "MEDIA_ERROR_IO"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string v0, "MEDIA_ERROR_MALFORMED"

    goto :goto_1

    :sswitch_2
    const-string v0, "MEDIA_ERROR_UNSUPPORTED"

    goto :goto_1

    :sswitch_3
    const-string v0, "MEDIA_ERROR_TIMED_OUT"

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_3
    .end sparse-switch
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string v0, ""

    sparse-switch p2, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoInfo(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const-string v0, "MEDIA_INFO_VIDEO_TRACK_LAGGING"

    goto :goto_0

    :sswitch_1
    const-string v0, "MEDIA_INFO_VIDEO_RENDERING_START"

    goto :goto_0

    :sswitch_2
    const-string v0, "MEDIA_INFO_BUFFERING_START"

    goto :goto_0

    :sswitch_3
    const-string v0, "MEDIA_INFO_BUFFERING_END"

    goto :goto_0

    :sswitch_4
    const-string v0, "MEDIA_INFO_NOT_SEEKABLE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_2
        0x2be -> :sswitch_3
        0x321 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const-string v0, "TJAdUnit"

    const-string v1, "video -- onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/tapjoy/TJAdUnit;->i:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    iget v4, p0, Lcom/tapjoy/TJAdUnit;->i:I

    if-eq v3, v4, :cond_0

    new-instance v3, Lcom/tapjoy/TJAdUnit$8;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/tapjoy/TJAdUnit$8;-><init>(Lcom/tapjoy/TJAdUnit;III)V

    invoke-virtual {p1, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    :goto_0
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v3, v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoReady(III)V

    goto :goto_0
.end method

.method public pauseVideo()Z
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->i:I

    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Video paused at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TJAdUnit;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    iget v1, p0, Lcom/tapjoy/TJAdUnit;->i:I

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->onVideoPaused(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playVideo()Z
    .locals 4

    const-string v0, "TJAdUnit"

    const-string v1, "playVideo"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->x:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->x:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->x:Landroid/os/Handler;

    new-instance v1, Lcom/tapjoy/TJAdUnit$6;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJAdUnit$6;-><init>(Lcom/tapjoy/TJAdUnit;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preload(Lcom/tapjoy/TJPlacementData;)Z
    .locals 3

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->q:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->isPrerenderingRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->canPreRenderPlacement()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/tapjoy/TJAdUnit;->fireContentReady()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pre-rendering ad unit for placement: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->incrementPlacementPreRenderCount()V

    invoke-virtual {p0, p1}, Lcom/tapjoy/TJAdUnit;->load(Lcom/tapjoy/TJPlacementData;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resume(Lcom/tapjoy/TJAdUnitSaveStateData;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-boolean v0, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    if-eqz v0, :cond_0

    const-string v0, "TJAdUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume bridge.didLaunchOtherActivity callbackID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v2, v2, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, v1, Lcom/tapjoy/TJAdUnitJSBridge;->otherActivityCallbackID:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/TJAdUnitJSBridge;->invokeJSCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    iput-boolean v4, v0, Lcom/tapjoy/TJAdUnitJSBridge;->didLaunchOtherActivity:Z

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/tapjoy/TJAdUnitSaveStateData;->seekTime:I

    iput v0, p0, Lcom/tapjoy/TJAdUnit;->i:I

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->h:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TJAdUnit;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/TJAdUnit$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$3;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundContent(Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V
    .locals 1

    new-instance v0, Lcom/tapjoy/TJAdUnit$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/tapjoy/TJAdUnit$4;-><init>(Lcom/tapjoy/TJAdUnit;Ljava/lang/String;Lcom/tapjoy/TJAdUnitJSBridge$AdUnitAsyncTaskListner;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->g:Lcom/tapjoy/mraid/view/MraidView;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tapjoy/mraid/view/MraidView;->setContext(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    iget-object v1, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnitJSBridge;->setContext(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/content/Context;

    instance-of v0, v0, Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->c:Landroid/content/Context;

    check-cast v0, Lcom/tapjoy/TJAdUnitActivity;

    iput-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitActivity;

    :cond_2
    return-void
.end method

.method public setOrientation(I)V
    .locals 9

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitActivity;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v5}, Lcom/tapjoy/TJAdUnitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v7, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v7}, Lcom/tapjoy/TJAdUnitActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eqz v5, :cond_0

    const/4 v8, 0x2

    if-ne v5, v8, :cond_1

    :cond_0
    if-gt v6, v7, :cond_3

    :cond_1
    if-eq v5, v1, :cond_2

    const/4 v8, 0x3

    if-ne v5, v8, :cond_9

    :cond_2
    if-le v7, v6, :cond_9

    :cond_3
    packed-switch v5, :pswitch_data_0

    move v0, v1

    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/tapjoy/TJAdUnit;->v:I

    if-eq v2, v4, :cond_4

    iget v0, p0, Lcom/tapjoy/TJAdUnit;->v:I

    :cond_4
    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/tapjoy/TJAdUnit;->a(I)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-static {v0}, Lcom/tapjoy/TJAdUnit;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/tapjoy/TJAdUnit;->b(I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget p1, p0, Lcom/tapjoy/TJAdUnit;->v:I

    :cond_7
    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->d:Lcom/tapjoy/TJAdUnitActivity;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJAdUnitActivity;->setRequestedOrientation(I)V

    iput p1, p0, Lcom/tapjoy/TJAdUnit;->v:I

    iput-boolean v1, p0, Lcom/tapjoy/TJAdUnit;->r:Z

    :cond_8
    return-void

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    move v0, v3

    goto :goto_0

    :cond_9
    packed-switch v5, :pswitch_data_1

    const-string v2, "TJAdUnit"

    const-string v3, "Unknown screen orientation. Defaulting to landscape."

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    move v0, v3

    goto :goto_0

    :pswitch_6
    move v0, v2

    goto :goto_0

    :cond_a
    move v0, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setVideoListener(Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->b:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tapjoy/TJAdUnit;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJAdUnit;->e:Lcom/tapjoy/TJAdUnitJSBridge;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnitJSBridge;->display()V

    :cond_0
    return-void
.end method

.method public setWebViewListener(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    return-void
.end method
