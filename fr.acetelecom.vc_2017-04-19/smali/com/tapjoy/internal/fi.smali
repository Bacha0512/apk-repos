.class public final Lcom/tapjoy/internal/fi;
.super Lcom/tapjoy/internal/ft;


# static fields
.field public static a:Lcom/tapjoy/internal/fi;


# instance fields
.field final b:Lcom/tapjoy/internal/fm;

.field final c:Ljava/lang/String;

.field final d:Lcom/tapjoy/internal/gf;

.field private e:Z

.field private f:Z

.field private g:J

.field private k:Landroid/content/Context;

.field private l:Lcom/tapjoy/internal/gw;

.field private m:Landroid/app/Activity;

.field private n:Lcom/tapjoy/internal/fn;

.field private o:Landroid/os/Handler;

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fm;Ljava/lang/String;Lcom/tapjoy/internal/gf;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/ft;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/fi;->b:Lcom/tapjoy/internal/fm;

    iput-object p2, p0, Lcom/tapjoy/internal/fi;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    iput-object p4, p0, Lcom/tapjoy/internal/fi;->k:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/tapjoy/internal/fi;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/tapjoy/internal/cq;->a(Z)V

    iput-boolean v1, p0, Lcom/tapjoy/internal/fi;->e:Z

    iput-boolean v1, p0, Lcom/tapjoy/internal/fi;->f:Z

    sput-object p0, Lcom/tapjoy/internal/fi;->a:Lcom/tapjoy/internal/fi;

    new-instance v0, Lcom/tapjoy/internal/gw;

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    new-instance v2, Lcom/tapjoy/internal/fi$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/fi$2;-><init>(Lcom/tapjoy/internal/fi;Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/gw;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gf;Lcom/tapjoy/internal/gw$a;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fi;->l:Lcom/tapjoy/internal/gw;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->l:Lcom/tapjoy/internal/gw;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/fi;->g:J

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->b:Lcom/tapjoy/internal/fm;

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fm;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/fn;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    iget v0, v0, Lcom/tapjoy/internal/gf;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fi;->o:Landroid/os/Handler;

    new-instance v0, Lcom/tapjoy/internal/fi$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fi$3;-><init>(Lcom/tapjoy/internal/fi;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fi;->p:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->p:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    iget v2, v2, Lcom/tapjoy/internal/gf;->c:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tapjoy/internal/fi;)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/tapjoy/internal/fi;->f:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/fi;->f:Z

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->o:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v6, p0, Lcom/tapjoy/internal/fi;->p:Ljava/lang/Runnable;

    iput-object v6, p0, Lcom/tapjoy/internal/fi;->o:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fi;->a:Lcom/tapjoy/internal/fi;

    if-ne v0, p0, :cond_1

    sput-object v6, Lcom/tapjoy/internal/fi;->a:Lcom/tapjoy/internal/fi;

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fi;->b:Lcom/tapjoy/internal/fm;

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->b:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tapjoy/internal/fi;->g:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/fm;->a(Ljava/util/Map;J)V

    iget-boolean v0, p0, Lcom/tapjoy/internal/fi;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->n:Lcom/tapjoy/internal/fn;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->n:Lcom/tapjoy/internal/fn;

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/tapjoy/internal/fn;->b(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    iput-object v6, p0, Lcom/tapjoy/internal/fi;->n:Lcom/tapjoy/internal/fn;

    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fi;->l:Lcom/tapjoy/internal/gw;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gw;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tapjoy/internal/fi;->l:Lcom/tapjoy/internal/gw;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v6, p0, Lcom/tapjoy/internal/fi;->l:Lcom/tapjoy/internal/gw;

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    instance-of v0, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_4
    iput-object v6, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gn;

    iget-object v0, v0, Lcom/tapjoy/internal/gn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gm;

    iget-object v3, v0, Lcom/tapjoy/internal/gm;->l:Lcom/tapjoy/internal/gk;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/tapjoy/internal/gm;->l:Lcom/tapjoy/internal/gk;

    invoke-virtual {v3}, Lcom/tapjoy/internal/gk;->a()V

    :cond_2
    iget-object v3, v0, Lcom/tapjoy/internal/gm;->m:Lcom/tapjoy/internal/gk;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/tapjoy/internal/gm;->m:Lcom/tapjoy/internal/gk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gk;->a()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/fn;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/fi;->n:Lcom/tapjoy/internal/fn;

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/c;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/tapjoy/internal/fi;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->c:Ljava/lang/String;

    aput-object v2, v0, v1
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/fe;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fi;->m:Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/tapjoy/internal/fi;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->c:Ljava/lang/String;

    aput-object v2, v0, v1
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    const-string v0, "Failed to show the content for \"{}\" caused by no registration of TJContentActivity"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/internal/fi;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/internal/fn;->b(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    iget-object v0, v0, Lcom/tapjoy/internal/gf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gn;

    iget-object v0, v0, Lcom/tapjoy/internal/gn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gm;

    iget-object v5, v0, Lcom/tapjoy/internal/gm;->l:Lcom/tapjoy/internal/gk;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/tapjoy/internal/gm;->l:Lcom/tapjoy/internal/gk;

    iget-object v5, v5, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, v0, Lcom/tapjoy/internal/gm;->m:Lcom/tapjoy/internal/gk;

    if-eqz v5, :cond_1

    iget-object v0, v0, Lcom/tapjoy/internal/gm;->m:Lcom/tapjoy/internal/gk;

    iget-object v0, v0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_3
    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    move v0, v2

    :cond_4
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
