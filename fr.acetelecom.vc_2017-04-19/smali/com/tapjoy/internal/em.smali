.class public final Lcom/tapjoy/internal/em;
.super Lcom/tapjoy/internal/fg;

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private final b:Ljava/util/Map;

.field private final c:Lcom/tapjoy/internal/eg;

.field private d:Z

.field private final e:Lcom/tapjoy/internal/er;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tapjoy/internal/em;

    invoke-direct {v0}, Lcom/tapjoy/internal/em;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/fg;->a:Lcom/tapjoy/internal/fg;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/fg;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/em;->b:Ljava/util/Map;

    new-instance v0, Lcom/tapjoy/internal/eg;

    invoke-direct {v0}, Lcom/tapjoy/internal/eg;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/em;->c:Lcom/tapjoy/internal/eg;

    new-instance v0, Lcom/tapjoy/internal/em$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/em$1;-><init>(Lcom/tapjoy/internal/em;)V

    iput-object v0, p0, Lcom/tapjoy/internal/em;->e:Lcom/tapjoy/internal/er;

    return-void
.end method

.method public static a()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/em;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/em;->c:Lcom/tapjoy/internal/eg;

    invoke-virtual {v0}, Lcom/tapjoy/internal/eg;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/em;->e:Lcom/tapjoy/internal/er;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/er;->c(Ljava/lang/Object;)Z

    :cond_2
    iput-boolean v2, p0, Lcom/tapjoy/internal/em;->d:Z

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/tapjoy/internal/em;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/tapjoy/internal/eo;->d:Lcom/tapjoy/internal/eo$a;

    return-void
.end method
