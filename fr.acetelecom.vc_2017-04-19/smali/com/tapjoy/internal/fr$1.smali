.class final Lcom/tapjoy/internal/fr$1;
.super Lcom/tapjoy/TJContentActivity$AbstractContentProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fr;->a(Lcom/tapjoy/internal/fn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fn;

.field final synthetic b:Lcom/tapjoy/internal/fr;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fr;Lcom/tapjoy/internal/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fr$1;->b:Lcom/tapjoy/internal/fr;

    iput-object p2, p0, Lcom/tapjoy/internal/fr$1;->a:Lcom/tapjoy/internal/fn;

    invoke-direct {p0}, Lcom/tapjoy/TJContentActivity$AbstractContentProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fr$1;->b:Lcom/tapjoy/internal/fr;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fr;->c()V

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fr$1;->b:Lcom/tapjoy/internal/fr;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$1;->a:Lcom/tapjoy/internal/fn;

    invoke-virtual {v0, p1, v1}, Lcom/tapjoy/internal/fr;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Failed to show the content for \"{}\" caused by invalid activity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/internal/fr$1;->b:Lcom/tapjoy/internal/fr;

    iget-object v3, v3, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fj;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fr$1;->a:Lcom/tapjoy/internal/fn;

    iget-object v1, p0, Lcom/tapjoy/internal/fr$1;->b:Lcom/tapjoy/internal/fr;

    iget-object v1, v1, Lcom/tapjoy/internal/fr;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fn;->b(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    goto :goto_0
.end method
