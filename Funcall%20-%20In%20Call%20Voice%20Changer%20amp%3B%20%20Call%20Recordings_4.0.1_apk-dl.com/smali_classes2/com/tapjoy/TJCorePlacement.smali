.class public Lcom/tapjoy/TJCorePlacement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/mediation/TJCustomPlacementListener;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

.field b:Landroid/content/Context;

.field c:Lcom/tapjoy/TJPlacementData;

.field d:Ljava/lang/String;

.field e:J

.field final f:Lcom/tapjoy/internal/eq;

.field g:Z

.field h:Lcom/tapjoy/internal/gb;

.field volatile i:Z

.field public initiatedBySdk:Z

.field volatile j:Z

.field volatile k:Z

.field l:Lcom/tapjoy/mediation/TJCustomPlacement;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field private q:Lcom/tapjoy/internal/bd;

.field private r:Ljava/util/Map;

.field private s:Lcom/tapjoy/TJAdUnit;

.field private t:Z

.field private u:Lcom/tapjoy/internal/gz;

.field private volatile v:Z

.field private w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

.field private x:Landroid/os/Handler;

.field private y:Ljava/lang/Runnable;

.field private z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/tapjoy/TJCorePlacement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "placementKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/tapjoy/internal/bd;->a()Lcom/tapjoy/internal/bd;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->q:Lcom/tapjoy/internal/bd;

    .line 61
    new-instance v0, Lcom/tapjoy/internal/eq;

    invoke-direct {v0}, Lcom/tapjoy/internal/eq;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    .line 65
    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->g:Z

    .line 66
    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->t:Z

    .line 69
    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/gz;

    .line 70
    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    .line 78
    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    .line 79
    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Z

    .line 80
    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->j:Z

    .line 81
    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 93
    new-instance v0, Lcom/tapjoy/TJCorePlacement$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCorePlacement$1;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    .line 114
    new-instance v0, Lcom/tapjoy/TJCorePlacement$4;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCorePlacement$4;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    .line 141
    invoke-static {}, Lcom/tapjoy/internal/d;->c()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    .line 142
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "getVisibleActivity() is NULL. Activity can be explicitly set via `Tapjoy.setActivity(Activity)`"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    new-instance v0, Lcom/tapjoy/TJPlacementData;

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->getPlacementContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/tapjoy/TJPlacementData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    .line 147
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJPlacementData;->setPlacementName(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->d:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/tapjoy/TJAdUnit;

    invoke-direct {v0}, Lcom/tapjoy/TJAdUnit;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Lcom/tapjoy/TJAdUnit;

    .line 154
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->z:Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->setWebViewListener(Lcom/tapjoy/TJAdUnit$TJAdUnitWebViewListener;)V

    .line 155
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->A:Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->setVideoListener(Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;)V

    .line 158
    new-instance v0, Lcom/tapjoy/TJCorePlacement$5;

    invoke-direct {v0, p0}, Lcom/tapjoy/TJCorePlacement$5;-><init>(Lcom/tapjoy/TJCorePlacement;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->y:Ljava/lang/Runnable;

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;J)J
    .locals 1

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/tapjoy/TJCorePlacement;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/gz;)Lcom/tapjoy/internal/gz;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/gz;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/mediation/TJMediatedPlacementData;)Lcom/tapjoy/mediation/TJMediatedPlacementData;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->d()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 49
    .line 18546
    if-eqz p1, :cond_0

    .line 18548
    :try_start_0
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Disable preload flag is set for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 18548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18550
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18551
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const-string v2, "redirect_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJPlacementData;->setRedirectURL(Ljava/lang/String;)V

    .line 18552
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setPreloadDisabled(Z)V

    .line 18553
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacementData;->setHasProgressSpinner(Z)V

    .line 18555
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "redirect_url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getRedirectURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18558
    return-void

    .line 18557
    :catch_0
    move-exception v0

    new-instance v0, Lcom/tapjoy/TapjoyException;

    const-string v1, "TJPlacement request failed, malformed server response"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18560
    :cond_0
    new-instance v0, Lcom/tapjoy/TapjoyException;

    const-string v1, "TJPlacement request failed due to null response"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/tapjoy/TJCorePlacement;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/tapjoy/TJCorePlacement;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/tapjoy/TJCorePlacement;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCorePlacement;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 711
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 713
    :try_start_0
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->u:Lcom/tapjoy/internal/gz;

    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/tapjoy/internal/gz;->a(Ljava/net/URI;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gz$a;

    .line 716
    iget-object v2, v0, Lcom/tapjoy/internal/gz$a;->a:Lcom/tapjoy/internal/gb;

    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    .line 717
    iget-object v2, v0, Lcom/tapjoy/internal/gz$a;->a:Lcom/tapjoy/internal/gb;

    invoke-virtual {v2}, Lcom/tapjoy/internal/gb;->a()V

    .line 719
    iget-object v0, v0, Lcom/tapjoy/internal/gz$a;->a:Lcom/tapjoy/internal/gb;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gb;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v2, "Failed to load fiverocks placement"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tapjoy/internal/cf; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 733
    :goto_0
    return v0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    .line 727
    goto :goto_0

    .line 728
    :catch_1
    move-exception v0

    .line 729
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tapjoy/internal/cf;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v0}, Lcom/tapjoy/internal/cf;->printStackTrace()V

    move v0, v1

    .line 731
    goto :goto_0

    .line 733
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/tapjoy/TJCorePlacement;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/tapjoy/TJCorePlacement;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->t:Z

    return v0
.end method

.method static synthetic e(Lcom/tapjoy/TJCorePlacement;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement;->i()V

    return-void
.end method

.method static synthetic f(Lcom/tapjoy/TJCorePlacement;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    .line 16828
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v0

    .line 49
    return-object v0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/tapjoy/TJCorePlacement;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/tapjoy/TJCorePlacement;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method

.method static synthetic i(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/TJPlacementData;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 688
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    const-string v1, "Custom placement call failed, retrying Tapjoy request"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Lcom/tapjoy/TapjoyException;

    const-string v1, "Mediation data is null"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getNextCall()Lorg/json/JSONObject;

    move-result-object v0

    .line 695
    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    .line 696
    iput-object v2, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->jsonToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    return-void

    .line 702
    :catch_0
    move-exception v0

    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load next call parameters for mediated placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 702
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    new-instance v0, Lcom/tapjoy/TapjoyException;

    const-string v1, "TJPlacement request failed due to custom placement fallback failure"

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->j:Z

    .line 848
    const-string v0, "REQUEST"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 849
    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;)V

    .line 850
    return-void
.end method

.method static synthetic j(Lcom/tapjoy/TJCorePlacement;)V
    .locals 5

    .prologue
    .line 49
    .line 17630
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getClassname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 17631
    const-class v1, Lcom/tapjoy/mediation/TJCustomPlacement;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17632
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 17633
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 17634
    check-cast v0, Lcom/tapjoy/mediation/TJCustomPlacement;

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    .line 17636
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 17637
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Landroid/os/Handler;

    .line 17640
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->x:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->y:Ljava/lang/Runnable;

    invoke-static {}, Lcom/tapjoy/mediation/TJMediationSettings;->getInstance()Lcom/tapjoy/mediation/TJMediationSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/mediation/TJMediationSettings;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17642
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->d(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    .line 17643
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    new-instance v3, Lcom/tapjoy/TJCorePlacement$10;

    invoke-direct {v3, p0, v0}, Lcom/tapjoy/TJCorePlacement$10;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/fa$a;)V

    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/tapjoy/mediation/TJCustomPlacement;->requestContentWithCustomPlacementParams(Landroid/content/Context;Lcom/tapjoy/mediation/TJCustomPlacementListener;Landroid/os/Bundle;)V

    .line 17680
    :goto_0
    return-void

    .line 17672
    :cond_1
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getClassname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement TJCustomPlacement."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17674
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 17677
    :catch_0
    move-exception v0

    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load custom class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getClassname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for placement "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 17828
    iget-object v4, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v4}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    .line 17677
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 17679
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement;->i()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/tapjoy/TJCorePlacement;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement;->j()V

    return-void
.end method

.method static synthetic l(Lcom/tapjoy/TJCorePlacement;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    return v0
.end method

.method static synthetic m(Lcom/tapjoy/TJCorePlacement;)Lcom/tapjoy/internal/gb;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;
    .locals 5

    .prologue
    .line 812
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->q:Lcom/tapjoy/internal/bd;

    monitor-enter v1

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->q:Lcom/tapjoy/internal/bd;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/bd;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    .line 814
    if-eqz v0, :cond_0

    .line 815
    sget-object v2, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Returning "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " placement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :cond_0
    monitor-exit v1

    return-object v0

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final declared-synchronized a()V
    .locals 4

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacementData;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->getPlacementContentUrl()Ljava/lang/String;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string v0, "TJPlacement is missing APP_ID"

    .line 231
    const-string v1, "TJPlacement.requestContent"

    invoke-static {v1}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 234
    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v2, Lcom/tapjoy/TJError;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1, v0}, Lcom/tapjoy/TJPlacementData;->updateUrl(Ljava/lang/String;)V

    .line 241
    :cond_1
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendContentRequest -- URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1828
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 241
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;Ljava/util/Map;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/tapjoy/TJPlacement;)V
    .locals 7

    .prologue
    .line 854
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    .line 7828
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 854
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->c()Ljava/lang/String;

    move-result-object v3

    .line 8023
    const/4 v4, 0x0

    iput v4, v0, Lcom/tapjoy/internal/eq;->b:I

    .line 8024
    const-string v4, "PlacementContent.funnel"

    invoke-static {v4}, Lcom/tapjoy/internal/fa;->e(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/internal/fa$a;->a()Lcom/tapjoy/internal/fa$a;

    move-result-object v4

    const-string v5, "placement"

    invoke-virtual {v4, v5, v1}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v4

    const-string v5, "placement_type"

    invoke-virtual {v4, v5, v2}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v4

    const-string v5, "content_type"

    invoke-virtual {v4, v5, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v4

    const-string v5, "state"

    iget v6, v0, Lcom/tapjoy/internal/eq;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/internal/eq;->a:Lcom/tapjoy/internal/fa$a;

    .line 8030
    iget-object v4, v0, Lcom/tapjoy/internal/eq;->a:Lcom/tapjoy/internal/fa$a;

    invoke-virtual {v4}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 8032
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8033
    const-string v4, "PlacementContent.ready"

    invoke-static {v4}, Lcom/tapjoy/internal/fa;->e(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tapjoy/internal/fa$a;->a()Lcom/tapjoy/internal/fa$a;

    move-result-object v4

    const-string v5, "placement"

    invoke-virtual {v4, v5, v1}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v4, "placement_type"

    invoke-virtual {v1, v4, v2}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    const-string v2, "content_type"

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/eq;->d:Lcom/tapjoy/internal/fa$a;

    .line 855
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 856
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content request delivered successfully for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->isContentAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mediationAgent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onRequestSuccess(Lcom/tapjoy/TJPlacement;)V

    .line 859
    :cond_1
    return-void
.end method

.method final a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    .locals 4

    .prologue
    .line 867
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content request failed for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9828
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/tapjoy/TJError;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    .line 870
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/tapjoy/TJPlacementListener;->onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V

    .line 873
    :cond_0
    return-void
.end method

.method final a(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V
    .locals 1

    .prologue
    .line 862
    const-string v0, "REQUEST"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 863
    invoke-virtual {p0, v0, p1, p2}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    .line 864
    return-void
.end method

.method final a(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .locals 4

    .prologue
    .line 803
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->q:Lcom/tapjoy/internal/bd;

    monitor-enter v1

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->q:Lcom/tapjoy/internal/bd;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/bd;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    if-eqz p2, :cond_0

    .line 806
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " placement: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tapjoy/TJPlacement;->getGUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 247
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    if-eqz v1, :cond_0

    .line 248
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already requesting content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "already doing"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fa$a;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :goto_0
    monitor-exit p0

    return-void

    .line 3533
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->resetPlacementRequestData()V

    .line 3536
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    .line 4097
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tapjoy/internal/eq;->a:Lcom/tapjoy/internal/fa$a;

    .line 4098
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/tapjoy/internal/eq;->c:Lcom/tapjoy/internal/fa$a;

    .line 3538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    .line 3539
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->i:Z

    .line 3540
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->j:Z

    .line 3541
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tapjoy/TJCorePlacement;->v:Z

    .line 262
    const-string v1, "REQUEST"

    invoke-virtual {p0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v5

    .line 265
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    .line 266
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 267
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    const-string v2, "event_name"

    .line 4828
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 267
    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 268
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    const-string v2, "event_preload"

    const-string v3, "true"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    const-string v2, "debug"

    .line 5017
    sget-boolean v3, Lcom/tapjoy/internal/fr;->a:Z

    .line 269
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    invoke-static {}, Lcom/tapjoy/internal/fu;->a()Lcom/tapjoy/internal/fu;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    const-string v3, "action_id_exclusion"

    .line 5898
    iget-object v4, v1, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/gd;

    if-nez v4, :cond_2

    .line 272
    :goto_1
    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 274
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    const-string v1, "system_placement"

    iget-boolean v2, p0, Lcom/tapjoy/TJCorePlacement;->initiatedBySdk:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    const-string v1, "push_id"

    iget-object v2, v5, Lcom/tapjoy/TJPlacement;->pushId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 278
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    const-string v1, "mediation_source"

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->m:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    const-string v1, "adapter_version"

    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->n:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 282
    if-eqz p2, :cond_1

    .line 283
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->r:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Lcom/tapjoy/TJAdUnit;

    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJAdUnit;->setContext(Landroid/content/Context;)V

    .line 291
    if-eqz p3, :cond_3

    .line 292
    new-instance v3, Lcom/tapjoy/internal/eg;

    invoke-static {}, Lcom/tapjoy/internal/eu;->b()Lcom/tapjoy/internal/es;

    move-result-object v0

    const-string v1, "placement_request_content_retry_timeout"

    .line 6214
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fe;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 292
    invoke-direct {v3, v0, v1}, Lcom/tapjoy/internal/eg;-><init>(J)V

    .line 294
    invoke-static {}, Lcom/tapjoy/internal/eu;->b()Lcom/tapjoy/internal/es;

    move-result-object v0

    const-string v1, "placement_request_content_retry_backoff"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/es;->c(Ljava/lang/String;)Lcom/tapjoy/internal/fd;

    move-result-object v6

    .line 301
    :goto_2
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->d(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v2

    .line 304
    new-instance v0, Lcom/tapjoy/TJCorePlacement$6;

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/tapjoy/TJCorePlacement$6;-><init>(Lcom/tapjoy/TJCorePlacement;Lcom/tapjoy/internal/fa$a;Lcom/tapjoy/internal/eg;Ljava/lang/String;Lcom/tapjoy/TJPlacement;Lcom/tapjoy/internal/fd;)V

    invoke-virtual {v0}, Lcom/tapjoy/TJCorePlacement$6;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5900
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/gd;

    .line 6049
    invoke-virtual {v0}, Lcom/tapjoy/internal/gd;->b()V

    .line 6050
    iget-object v0, v0, Lcom/tapjoy/internal/gd;->b:Lcom/tapjoy/internal/q;

    invoke-virtual {v0}, Lcom/tapjoy/internal/q;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 297
    :cond_3
    sget-object v3, Lcom/tapjoy/internal/eg;->a:Lcom/tapjoy/internal/eg;

    .line 298
    sget-object v6, Lcom/tapjoy/internal/fd;->a:Lcom/tapjoy/internal/fd;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->o:Ljava/lang/String;

    .line 617
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->initiatedBySdk:Z

    if-eqz v0, :cond_1

    const-string v0, "sdk"

    goto :goto_0

    :cond_1
    const-string v0, "app"

    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    .line 790
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 797
    :goto_0
    return-object v0

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->h:Lcom/tapjoy/internal/gb;

    if-eqz v0, :cond_1

    .line 793
    const-string v0, "mm"

    goto :goto_0

    .line 794
    :cond_1
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->j:Z

    if-eqz v0, :cond_2

    .line 795
    const-string v0, "ad"

    goto :goto_0

    .line 797
    :cond_2
    const-string v0, "none"

    goto :goto_0
.end method

.method final d()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 876
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->i:Z

    if-nez v0, :cond_1

    .line 877
    iput-boolean v3, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    .line 879
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content is ready for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    .line 11042
    iget-object v1, v0, Lcom/tapjoy/internal/eq;->d:Lcom/tapjoy/internal/fa$a;

    .line 11043
    if-eqz v1, :cond_0

    .line 11044
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/tapjoy/internal/eq;->d:Lcom/tapjoy/internal/fa$a;

    .line 11045
    invoke-virtual {v1}, Lcom/tapjoy/internal/fa$a;->b()Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 881
    :cond_0
    const-string v0, "REQUEST"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 882
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 883
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    .line 884
    iput-boolean v3, p0, Lcom/tapjoy/TJCorePlacement;->i:Z

    .line 887
    :cond_1
    return-void
.end method

.method final e()V
    .locals 4

    .prologue
    .line 890
    const-string v0, "SHOW"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11897
    sget-object v1, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content dismissed for placement "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12828
    iget-object v3, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v3}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    .line 11897
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11898
    if-eqz v0, :cond_0

    .line 13063
    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 11898
    if-eqz v1, :cond_0

    .line 14063
    iget-object v1, v0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 11899
    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    .line 894
    :cond_0
    return-void
.end method

.method final f()V
    .locals 3

    .prologue
    .line 904
    sget-object v0, Lcom/tapjoy/TJCorePlacement;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content shown for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14828
    iget-object v2, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v2}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    .line 904
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->f:Lcom/tapjoy/internal/eq;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eq;->a()V

    .line 907
    const-string v0, "SHOW"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 909
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    .line 911
    :cond_0
    return-void
.end method

.method public getAdUnit()Lcom/tapjoy/TJAdUnit;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->s:Lcom/tapjoy/TJAdUnit;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getPlacementContentUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 764
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getAppID()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getPlacementURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "v1/apps/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/content?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 773
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getPlacementData()Lcom/tapjoy/TJPlacementData;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    return-object v0
.end method

.method public isContentAvailable()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->j:Z

    return v0
.end method

.method public isContentReady()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->k:Z

    return v0
.end method

.method public onCustomPlacementContentDismiss()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1008
    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    .line 1009
    iput-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    .line 1010
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->e()V

    .line 1011
    return-void
.end method

.method public onCustomPlacementContentShown()V
    .locals 0

    .prologue
    .line 1003
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->f()V

    .line 1004
    return-void
.end method

.method public onCustomPlacementFailure(Ljava/lang/Error;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/Error;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    if-eqz v0, :cond_1

    .line 975
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement;->h()V

    .line 978
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getNoFillURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getNoFillURL()Ljava/lang/String;

    move-result-object v0

    .line 982
    new-instance v1, Lcom/tapjoy/TJCorePlacement$3;

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/TJCorePlacement$3;-><init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement$3;->start()V

    .line 993
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement;->i()V
    :try_end_0
    .catch Lcom/tapjoy/TapjoyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :cond_1
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v0

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15828
    iget-object v1, p0, Lcom/tapjoy/TJCorePlacement;->c:Lcom/tapjoy/TJPlacementData;

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacementData;->getPlacementName()Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SERVER_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v2, Lcom/tapjoy/TJError;

    const/16 v3, 0x1f4

    invoke-direct {v2, v3, v0}, Lcom/tapjoy/TJError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/tapjoy/TJCorePlacement;->a(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/TJError;)V

    goto :goto_0
.end method

.method public onCustomPlacementLoad()V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->l:Lcom/tapjoy/mediation/TJCustomPlacement;

    if-eqz v0, :cond_1

    .line 947
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement;->h()V

    .line 949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TJCorePlacement;->j:Z

    .line 950
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getFillURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement;->w:Lcom/tapjoy/mediation/TJMediatedPlacementData;

    invoke-virtual {v0}, Lcom/tapjoy/mediation/TJMediatedPlacementData;->getFillURL()Ljava/lang/String;

    move-result-object v0

    .line 954
    new-instance v1, Lcom/tapjoy/TJCorePlacement$2;

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/TJCorePlacement$2;-><init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tapjoy/TJCorePlacement$2;->start()V

    .line 963
    :cond_0
    const-string v0, "TJPlacement.requestContent"

    invoke-static {v0}, Lcom/tapjoy/internal/fa;->b(Ljava/lang/String;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fa$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/tapjoy/internal/fa$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa$a;->c()V

    .line 966
    invoke-direct {p0}, Lcom/tapjoy/TJCorePlacement;->j()V

    .line 967
    invoke-virtual {p0}, Lcom/tapjoy/TJCorePlacement;->d()V

    .line 969
    :cond_1
    return-void
.end method

.method public onCustomPlacementReward(Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "amount"    # I

    .prologue
    .line 1015
    .line 15914
    const-string v0, "SHOW"

    invoke-virtual {p0, v0}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 15915
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15916
    new-instance v1, Lcom/tapjoy/TJCorePlacement$11;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TJCorePlacement$11;-><init>(Lcom/tapjoy/TJCorePlacement;Ljava/lang/String;)V

    .line 15936
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getListener()Lcom/tapjoy/TJPlacementListener;

    move-result-object v2

    invoke-interface {v2, v0, v1, p1, p2}, Lcom/tapjoy/TJPlacementListener;->onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V

    .line 1016
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement;->b:Landroid/content/Context;

    .line 745
    return-void
.end method
