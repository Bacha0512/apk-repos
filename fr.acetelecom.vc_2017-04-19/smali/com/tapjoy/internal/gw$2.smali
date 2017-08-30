.class final Lcom/tapjoy/internal/gw$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gm;

.field final synthetic b:Lcom/tapjoy/internal/gw;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gw;Lcom/tapjoy/internal/gm;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/gw$2;->b:Lcom/tapjoy/internal/gw;

    iput-object p2, p0, Lcom/tapjoy/internal/gw$2;->a:Lcom/tapjoy/internal/gm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/gw$2;->b:Lcom/tapjoy/internal/gw;

    invoke-static {v0}, Lcom/tapjoy/internal/gw;->a(Lcom/tapjoy/internal/gw;)Lcom/tapjoy/internal/gw$a;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/gw$2;->a:Lcom/tapjoy/internal/gm;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/gw$a;->a(Lcom/tapjoy/internal/gm;)V

    return-void
.end method
