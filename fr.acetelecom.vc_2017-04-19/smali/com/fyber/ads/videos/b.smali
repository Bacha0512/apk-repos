.class public final Lcom/fyber/ads/videos/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fyber/c/d/d$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/ads/videos/b$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/fyber/ads/videos/b;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Lcom/fyber/ads/videos/RewardedVideoActivity;

.field private e:Landroid/content/Context;

.field private f:Landroid/webkit/WebView;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
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

.field private j:Z

.field private k:Lcom/fyber/ads/videos/d;

.field private l:Lcom/fyber/requesters/VirtualCurrencyRequester;

.field private m:Lcom/fyber/ads/videos/c;

.field private n:Landroid/webkit/WebViewClient;

.field private o:Landroid/webkit/WebChromeClient;

.field private p:Lcom/fyber/c/d/d;

.field private q:Lcom/fyber/c/d/b;

.field private r:Lcom/fyber/ads/videos/mediation/c;

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/fyber/ads/videos/b;

    invoke-direct {v0}, Lcom/fyber/ads/videos/b;-><init>()V

    sput-object v0, Lcom/fyber/ads/videos/b;->a:Lcom/fyber/ads/videos/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/fyber/ads/videos/b;->g:Z

    iput-boolean v2, p0, Lcom/fyber/ads/videos/b;->j:Z

    sget-object v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    iput-boolean v1, p0, Lcom/fyber/ads/videos/b;->s:Z

    iput-boolean v1, p0, Lcom/fyber/ads/videos/b;->u:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RVTimer"

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/fyber/ads/videos/b$1;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/b$1;-><init>(Lcom/fyber/ads/videos/b;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/fyber/ads/videos/b;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/fyber/ads/videos/b$3;

    invoke-direct {v2, p0}, Lcom/fyber/ads/videos/b$3;-><init>(Lcom/fyber/ads/videos/b;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->c:Landroid/os/Handler;

    new-instance v0, Lcom/fyber/ads/videos/mediation/c;

    invoke-direct {v0}, Lcom/fyber/ads/videos/mediation/c;-><init>()V

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->r:Lcom/fyber/ads/videos/mediation/c;

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/b;Lcom/fyber/c/d/b;)Lcom/fyber/c/d/b;
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b;->q:Lcom/fyber/c/d/b;

    return-object p1
.end method

.method static synthetic a(Lcom/fyber/ads/videos/b;Lcom/fyber/c/d/d;)Lcom/fyber/c/d/d;
    .locals 0

    iput-object p1, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    return-object p1
.end method

.method static synthetic a(Lcom/fyber/ads/videos/b;Lcom/fyber/a/a;)Ljava/lang/String;
    .locals 3

    const-string v0, "videos"

    invoke-static {v0}, Lcom/fyber/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/u;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->b(Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->a(Ljava/util/Map;)Lcom/fyber/utils/u;

    move-result-object v0

    const-string v1, "rewarded"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    const-string v1, "ad_format"

    const-string v2, "video"

    invoke-virtual {v0, v1, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/u;->a()Lcom/fyber/utils/u;

    move-result-object v0

    invoke-direct {p0}, Lcom/fyber/ads/videos/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/fyber/utils/u;->e()Lcom/fyber/utils/u;

    :cond_0
    invoke-virtual {v0}, Lcom/fyber/utils/u;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/fyber/ads/videos/b;)V
    .locals 3

    new-instance v0, Lcom/fyber/b/c/a$a;

    sget-object v1, Lcom/fyber/ads/internal/a;->e:Lcom/fyber/ads/internal/a;

    invoke-direct {v0, v1}, Lcom/fyber/b/c/a$a;-><init>(Lcom/fyber/ads/internal/a;)V

    const-string v1, "global"

    invoke-virtual {v0, v1}, Lcom/fyber/b/c/a$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/c/a$a;

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "placement_id"

    iget-object v2, p0, Lcom/fyber/ads/videos/b;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/b/c/a$a;->a(Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/fyber/ads/videos/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/b/c/a$a;->a(Ljava/lang/String;)Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/c/a;

    invoke-virtual {v0}, Lcom/fyber/b/c/a;->b()V

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/b;I)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->b:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-lez p1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/fyber/ads/videos/d;->c:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, v1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/d;)Z

    :goto_1
    iget-object v1, p0, Lcom/fyber/ads/videos/b;->m:Lcom/fyber/ads/videos/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->m:Lcom/fyber/ads/videos/c;

    invoke-interface {v1, v0}, Lcom/fyber/ads/videos/c;->didReceiveOffers(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/fyber/ads/videos/b;->c(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/fyber/ads/videos/b;Lcom/fyber/ads/videos/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/c$a;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/fyber/ads/videos/c$a;)V
    .locals 3

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->m:Lcom/fyber/ads/videos/c;

    if-eqz v0, :cond_0

    const-string v0, "RewardedVideoClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RewardedVideoClientStatus -> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->m:Lcom/fyber/ads/videos/c;

    invoke-interface {v0, p1}, Lcom/fyber/ads/videos/c;->didChangeStatus(Lcom/fyber/ads/videos/c$a;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/fyber/ads/videos/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/fyber/ads/videos/b;->g:Z

    return p1
.end method

.method private a(Lcom/fyber/ads/videos/d;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    if-eq v1, p1, :cond_0

    invoke-virtual {p1}, Lcom/fyber/ads/videos/d;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    invoke-virtual {v2}, Lcom/fyber/ads/videos/d;->ordinal()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v1, v0, :cond_0

    iput-object p1, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    const-string v1, "RewardedVideoClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RewardedVideoClient mStatus -> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/ads/videos/d;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fyber/ads/videos/c$a;->a:Lcom/fyber/ads/videos/c$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/c$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CLOSE_FINISHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    invoke-static {v0}, Lcom/fyber/requesters/VirtualCurrencyRequester;->from(Lcom/fyber/requesters/Requester;)Lcom/fyber/requesters/VirtualCurrencyRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/VirtualCurrencyRequester;->withPlacementId(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/requesters/VirtualCurrencyRequester;

    iput-boolean v3, p0, Lcom/fyber/ads/videos/b;->t:Z

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->b:Landroid/os/Handler;

    new-instance v2, Lcom/fyber/ads/videos/b$8;

    invoke-direct {v2, p0, v0}, Lcom/fyber/ads/videos/b$8;-><init>(Lcom/fyber/ads/videos/b;Lcom/fyber/requesters/VirtualCurrencyRequester;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->c(Z)V

    sget-object v0, Lcom/fyber/ads/videos/c$a;->b:Lcom/fyber/ads/videos/c$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/c$a;)V

    iget-boolean v0, p0, Lcom/fyber/ads/videos/b;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->e:Landroid/content/Context;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_REWARD_NOTIFICATION:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v0, "CLOSE_ABORTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v3}, Lcom/fyber/ads/videos/b;->c(Z)V

    sget-object v0, Lcom/fyber/ads/videos/c$a;->c:Lcom/fyber/ads/videos/c$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/c$a;)V

    goto :goto_0

    :cond_4
    const-string v0, "ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_MESSAGE_DEFAULT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "USER_ENGAGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fyber/ads/videos/d;->e:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/d;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebView;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/fyber/ads/videos/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7b

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iput-object v3, p0, Lcom/fyber/ads/videos/b;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->c(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    const-string v1, "unknown"

    const-string v2, "forceClose"

    invoke-virtual {v0, v1, v2}, Lcom/fyber/c/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object v3, p0, Lcom/fyber/ads/videos/b;->i:Ljava/util/Map;

    iput-object v3, p0, Lcom/fyber/ads/videos/b;->h:Ljava/lang/String;

    sget-object v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/d;)Z

    return-void
.end method

.method static synthetic d(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebViewClient;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->n:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/fyber/ads/videos/b;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/b;->g:Z

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->d()V

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    invoke-virtual {v0}, Lcom/fyber/c/d/d;->e()V

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->e:Landroid/content/Context;

    :goto_0
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_TITLE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ERROR_DIALOG_BUTTON_TITLE_DISMISS:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v2}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fyber/ads/videos/b$7;

    invoke-direct {v3, p0}, Lcom/fyber/ads/videos/b$7;-><init>(Lcom/fyber/ads/videos/b;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/videos/b;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/fyber/ads/videos/b;->g:Z

    const-string v0, "RewardedVideoClient"

    const-string v1, "Unable to show the dialog window"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/fyber/ads/videos/b;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    return-object v0
.end method

.method static synthetic g(Lcom/fyber/ads/videos/b;)Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method private g()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/fyber/ads/videos/b;->e:Landroid/content/Context;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/fyber/ads/videos/b;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/ads/videos/b;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "FYBEnableSSLRewardedVideo"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "RewardedVideoClient"

    const-string v4, "Manifest metadata - disabling SSL"

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "RewardedVideoClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load meta-data from Manifest: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic h(Lcom/fyber/ads/videos/b;)V
    .locals 3

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onPause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RewardedVideoClient"

    const-string v2, "onPause error"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/fyber/ads/videos/b;)Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic j(Lcom/fyber/ads/videos/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/fyber/ads/videos/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebChromeClient;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->o:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fyber/ads/videos/b$10;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/b$10;-><init>(Lcom/fyber/ads/videos/b;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->o:Landroid/webkit/WebChromeClient;

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/b;->o:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method static synthetic m(Lcom/fyber/ads/videos/b;)Landroid/webkit/WebViewClient;
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->n:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/fyber/ads/videos/b$9;

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    invoke-direct {v0, p0, v1}, Lcom/fyber/ads/videos/b$9;-><init>(Lcom/fyber/ads/videos/b;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->n:Landroid/webkit/WebViewClient;

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/b;->n:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method static synthetic n(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/mediation/c;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->r:Lcom/fyber/ads/videos/mediation/c;

    return-object v0
.end method

.method static synthetic o(Lcom/fyber/ads/videos/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->c(Z)V

    return-void
.end method

.method static synthetic p(Lcom/fyber/ads/videos/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fyber/ads/videos/b;->t:Z

    return v0
.end method

.method static synthetic q(Lcom/fyber/ads/videos/b;)Lcom/fyber/requesters/VirtualCurrencyRequester;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    return-object v0
.end method

.method static synthetic r(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/RewardedVideoActivity;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    return-object v0
.end method

.method static synthetic s(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/b;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->q:Lcom/fyber/c/d/b;

    return-object v0
.end method

.method static synthetic t(Lcom/fyber/ads/videos/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic u(Lcom/fyber/ads/videos/b;)Lcom/fyber/c/d/d;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    return-object v0
.end method

.method static synthetic v(Lcom/fyber/ads/videos/b;)Lcom/fyber/ads/videos/d;
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    return-object v0
.end method

.method static synthetic w(Lcom/fyber/ads/videos/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/fyber/ads/videos/b;->g:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/d;->e:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/d;->c:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0, v1}, Lcom/fyber/ads/videos/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/d;->e:Lcom/fyber/ads/videos/d;

    if-ne v0, v1, :cond_2

    const-string v0, "CLOSE_FINISHED"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "CLOSE_ABORTED"

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->p:Lcom/fyber/c/d/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/ads/videos/b;->s:Z

    return-void
.end method

.method public final a(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->r:Lcom/fyber/ads/videos/mediation/c;

    iget-object v1, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Lcom/fyber/ads/videos/mediation/c;->a(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fyber/ads/videos/b;->j:Z

    return-void
.end method

.method public final a(Lcom/fyber/a/a;Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/fyber/ads/videos/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/fyber/ads/videos/b;->e:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/fyber/ads/videos/b;->t:Z

    new-instance v0, Lcom/fyber/ads/videos/b$6;

    invoke-direct {v0, p0}, Lcom/fyber/ads/videos/b$6;-><init>(Lcom/fyber/ads/videos/b;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    :goto_0
    iget-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    const-string v2, "videoPlayerWebview"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iput-boolean v1, p0, Lcom/fyber/ads/videos/b;->s:Z

    sget-object v0, Lcom/fyber/ads/videos/d;->b:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/d;)Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->v:Ljava/lang/String;

    new-instance v0, Lcom/fyber/ads/videos/b$4;

    invoke-direct {v0, p0, p1}, Lcom/fyber/ads/videos/b$4;-><init>(Lcom/fyber/ads/videos/b;Lcom/fyber/a/a;)V

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/fyber/ads/videos/b;->f:Landroid/webkit/WebView;

    goto :goto_0

    :cond_2
    const-string v0, "RewardedVideoClient"

    const-string v2, "RewardedVideoClient cannot request offers at this point. It might be requesting offers right now or an offer might be currently being presented to the user."

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method public final a(Lcom/fyber/ads/videos/RewardedVideoActivity;Z)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->b()Lcom/fyber/cache/internal/a;

    move-result-object v3

    const-string v0, ""

    if-eqz v3, :cond_0

    sget-object v4, Lcom/fyber/cache/internal/a;->a:Lcom/fyber/cache/internal/a;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, ", cache_config_id:\'%s\'"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/fyber/cache/internal/a;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "javascript:Sponsorpay.MBE.SDKInterface.do_start({cached_ad_ids:%s, downloaded_videos_count:%d%s})"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    invoke-static {}, Lcom/fyber/cache/internal/e;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/cache/internal/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "RewardedVideoClient"

    invoke-static {v2, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/CacheManager;->d()Lcom/fyber/cache/internal/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/e;->c()V

    iput-object p1, p0, Lcom/fyber/ads/videos/b;->d:Lcom/fyber/ads/videos/RewardedVideoActivity;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/ads/videos/b$5;

    invoke-direct {v0, p0, p1}, Lcom/fyber/ads/videos/b$5;-><init>(Lcom/fyber/ads/videos/b;Lcom/fyber/ads/videos/RewardedVideoActivity;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/videos/b;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const-string v0, "RewardedVideoClient"

    const-string v1, "RewardedVideoClient is not ready to show offers. Call requestOffers() and wait until your listener is called with the confirmation that offers have been received."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v0, "RewardedVideoClient"

    const-string v1, "The provided activity is null, RewardedVideoClient cannot start the engagement."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/fyber/ads/videos/c;)Z
    .locals 1

    iput-object p1, p0, Lcom/fyber/ads/videos/b;->m:Lcom/fyber/ads/videos/c;

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/fyber/requesters/VirtualCurrencyRequester;)Z
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/fyber/ads/videos/b;->l:Lcom/fyber/requesters/VirtualCurrencyRequester;

    sget-object v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/d;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change the currency ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/fyber/ads/videos/b;->h:Ljava/lang/String;

    sget-object v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/d;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change the placement ID while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/fyber/ads/videos/b;->i:Ljava/util/Map;

    sget-object v0, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/d;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "RewardedVideoClient"

    const-string v1, "Cannot change custom parameters while a request to the server is going on or an offer is being presented to the user."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/fyber/ads/videos/b;->u:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/ads/videos/b;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    invoke-virtual {v0}, Lcom/fyber/ads/videos/d;->a()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->c:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x20a

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/fyber/ads/videos/b;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/d;->a:Lcom/fyber/ads/videos/d;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/fyber/ads/videos/c$a;->c:Lcom/fyber/ads/videos/c$a;

    invoke-direct {p0, v0}, Lcom/fyber/ads/videos/b;->a(Lcom/fyber/ads/videos/c$a;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->k:Lcom/fyber/ads/videos/d;

    sget-object v1, Lcom/fyber/ads/videos/d;->d:Lcom/fyber/ads/videos/d;

    if-ne v0, v1, :cond_0

    const-string v0, "RewardedVideoClient"

    const-string v1, "Connection has been lost"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fyber/ads/videos/b;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/ads/videos/b$2;

    invoke-direct {v1, p0}, Lcom/fyber/ads/videos/b$2;-><init>(Lcom/fyber/ads/videos/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
