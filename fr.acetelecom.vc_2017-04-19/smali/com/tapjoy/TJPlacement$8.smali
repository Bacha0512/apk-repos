.class final Lcom/tapjoy/TJPlacement$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TJPlacement;->showContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJPlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/TJPlacement$8;->a:Lcom/tapjoy/TJPlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/TJPlacement$8;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->o(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/internal/ft;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/fm;->a()Lcom/tapjoy/internal/fm;

    move-result-object v1

    iget-object v1, v1, Lcom/tapjoy/internal/fm;->p:Lcom/tapjoy/internal/fn;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ft;->a(Lcom/tapjoy/internal/fn;)V

    return-void
.end method
