.class final Lcom/tapjoy/internal/fz$1;
.super Lcom/tapjoy/TJContentActivity$AbstractContentProducer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fz;->a(Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/eq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/fv;

.field final synthetic b:Lcom/tapjoy/internal/eq;

.field final synthetic c:Lcom/tapjoy/internal/fz;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fz;Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/eq;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tapjoy/internal/fz$1;->c:Lcom/tapjoy/internal/fz;

    iput-object p2, p0, Lcom/tapjoy/internal/fz$1;->a:Lcom/tapjoy/internal/fv;

    iput-object p3, p0, Lcom/tapjoy/internal/fz$1;->b:Lcom/tapjoy/internal/eq;

    invoke-direct {p0}, Lcom/tapjoy/TJContentActivity$AbstractContentProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public final dismiss(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tapjoy/internal/fz$1;->c:Lcom/tapjoy/internal/fz;

    .line 2038
    invoke-virtual {v0}, Lcom/tapjoy/internal/fz;->c()V

    .line 131
    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fz$1;->c:Lcom/tapjoy/internal/fz;

    iget-object v1, p0, Lcom/tapjoy/internal/fz$1;->a:Lcom/tapjoy/internal/fv;

    iget-object v2, p0, Lcom/tapjoy/internal/fz$1;->b:Lcom/tapjoy/internal/eq;

    .line 1038
    invoke-virtual {v0, p1, v1, v2}, Lcom/tapjoy/internal/fz;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/eq;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    const-string v0, "Failed to show the content for \"{}\" caused by invalid activity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/internal/fz$1;->c:Lcom/tapjoy/internal/fz;

    iget-object v3, v3, Lcom/tapjoy/internal/fz;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/fz$1;->a:Lcom/tapjoy/internal/fv;

    iget-object v1, p0, Lcom/tapjoy/internal/fz$1;->c:Lcom/tapjoy/internal/fz;

    iget-object v1, v1, Lcom/tapjoy/internal/fz;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fz$1;->c:Lcom/tapjoy/internal/fz;

    iget-object v2, v2, Lcom/tapjoy/internal/fz;->k:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/fv;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fg;)V

    goto :goto_0
.end method
