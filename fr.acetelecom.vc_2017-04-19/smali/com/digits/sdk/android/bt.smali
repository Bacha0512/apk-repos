.class abstract Lcom/digits/sdk/android/bt;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field protected final c:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/digits/sdk/android/models/d;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c",
            "<",
            "Lcom/digits/sdk/android/models/a;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/digits/sdk/android/h;

.field final f:Ljava/lang/String;

.field final g:Lcom/digits/sdk/android/ci;

.field final h:Z

.field final i:Landroid/os/ResultReceiver;

.field final j:Lcom/digits/sdk/android/a;

.field final k:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/digits/sdk/android/h;Ljava/lang/String;Lcom/digits/sdk/android/ci;ZLandroid/os/ResultReceiver;Lcom/digits/sdk/android/a;Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/bt;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/digits/sdk/android/bt;->e:Lcom/digits/sdk/android/h;

    iput-object p3, p0, Lcom/digits/sdk/android/bt;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/digits/sdk/android/bt;->g:Lcom/digits/sdk/android/ci;

    iput-boolean p5, p0, Lcom/digits/sdk/android/bt;->h:Z

    iput-object p6, p0, Lcom/digits/sdk/android/bt;->i:Landroid/os/ResultReceiver;

    iput-object p7, p0, Lcom/digits/sdk/android/bt;->j:Lcom/digits/sdk/android/a;

    iput-object p8, p0, Lcom/digits/sdk/android/bt;->k:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    new-instance v0, Lcom/digits/sdk/android/bt$1;

    invoke-direct {v0, p0}, Lcom/digits/sdk/android/bt$1;-><init>(Lcom/digits/sdk/android/bt;)V

    iput-object v0, p0, Lcom/digits/sdk/android/bt;->d:Lcom/twitter/sdk/android/core/c;

    new-instance v0, Lcom/digits/sdk/android/bt$2;

    invoke-direct {v0, p0}, Lcom/digits/sdk/android/bt$2;-><init>(Lcom/digits/sdk/android/bt;)V

    iput-object v0, p0, Lcom/digits/sdk/android/bt;->c:Lcom/twitter/sdk/android/core/c;

    return-void
.end method

.method static synthetic a(Lcom/digits/sdk/android/bt;Lcom/digits/sdk/android/models/a;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/bt;->a(Lcom/digits/sdk/android/models/a;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/digits/sdk/android/bt;Lcom/digits/sdk/android/models/d;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/bt;->a(Lcom/digits/sdk/android/models/d;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/digits/sdk/android/models/AuthConfigResponse;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/digits/sdk/android/models/AuthConfigResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/digits/sdk/android/bt;->h:Z

    :goto_0
    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/digits/sdk/android/bt;->f:Ljava/lang/String;

    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/digits/sdk/android/bt;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "receiver"

    iget-object v3, p0, Lcom/digits/sdk/android/bt;->i:Landroid/os/ResultReceiver;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "phone_number"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "auth_config"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "email_enabled"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "digits_event_details_builder"

    iget-object v2, p0, Lcom/digits/sdk/android/bt;->k:Lcom/digits/sdk/android/internal/DigitsEventDetailsBuilder;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1

    :cond_1
    iget-boolean v0, p1, Lcom/digits/sdk/android/models/AuthConfigResponse;->c:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/digits/sdk/android/bt;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/digits/sdk/android/models/a;)Landroid/content/Intent;
    .locals 4

    iget-object v0, p1, Lcom/digits/sdk/android/models/a;->d:Lcom/digits/sdk/android/models/AuthConfigResponse;

    iget-object v1, p1, Lcom/digits/sdk/android/models/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/bt;->j:Lcom/digits/sdk/android/a;

    invoke-interface {v2}, Lcom/digits/sdk/android/a;->c()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/digits/sdk/android/bt;->a(Lcom/digits/sdk/android/models/AuthConfigResponse;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "request_id"

    iget-object v2, p1, Lcom/digits/sdk/android/models/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    iget-wide v2, p1, Lcom/digits/sdk/android/models/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Lcom/digits/sdk/android/models/d;)Landroid/content/Intent;
    .locals 3

    iget-object v0, p1, Lcom/digits/sdk/android/models/d;->d:Lcom/digits/sdk/android/models/AuthConfigResponse;

    iget-object v1, p1, Lcom/digits/sdk/android/models/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/bt;->j:Lcom/digits/sdk/android/a;

    invoke-interface {v2}, Lcom/digits/sdk/android/a;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/digits/sdk/android/bt;->a(Lcom/digits/sdk/android/models/AuthConfigResponse;Ljava/lang/String;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/digits/sdk/android/bt;Lcom/twitter/sdk/android/core/p;)Lcom/digits/sdk/android/at;
    .locals 1

    invoke-direct {p0, p1}, Lcom/digits/sdk/android/bt;->a(Lcom/twitter/sdk/android/core/p;)Lcom/digits/sdk/android/at;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/twitter/sdk/android/core/p;)Lcom/digits/sdk/android/at;
    .locals 2

    new-instance v0, Lcom/digits/sdk/android/bx;

    iget-object v1, p0, Lcom/digits/sdk/android/bt;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/bx;-><init>(Landroid/content/res/Resources;)V

    invoke-static {v0, p1}, Lcom/digits/sdk/android/at;->a(Lcom/digits/sdk/android/bd;Lcom/twitter/sdk/android/core/p;)Lcom/digits/sdk/android/at;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/digits/sdk/android/bt;)V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/bt;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bt;->e:Lcom/digits/sdk/android/h;

    iget-object v1, p0, Lcom/digits/sdk/android/bt;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/bt;->g:Lcom/digits/sdk/android/ci;

    iget-object v3, p0, Lcom/digits/sdk/android/bt;->c:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/digits/sdk/android/h;->b(Ljava/lang/String;Lcom/digits/sdk/android/ci;Lcom/twitter/sdk/android/core/c;)V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/digits/sdk/android/bt;->e:Lcom/digits/sdk/android/h;

    iget-object v1, p0, Lcom/digits/sdk/android/bt;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/digits/sdk/android/bt;->g:Lcom/digits/sdk/android/ci;

    iget-object v3, p0, Lcom/digits/sdk/android/bt;->d:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/digits/sdk/android/h;->a(Ljava/lang/String;Lcom/digits/sdk/android/ci;Lcom/twitter/sdk/android/core/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/digits/sdk/android/bt;->c()V

    return-void
.end method

.method public abstract a(Landroid/content/Intent;)V
.end method

.method public abstract a(Lcom/digits/sdk/android/at;)V
.end method
