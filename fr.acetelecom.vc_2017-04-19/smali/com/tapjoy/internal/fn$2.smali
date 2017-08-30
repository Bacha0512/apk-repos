.class final Lcom/tapjoy/internal/fn$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fn;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/fn;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fn;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fn$2;->b:Lcom/tapjoy/internal/fn;

    iput-object p2, p0, Lcom/tapjoy/internal/fn$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/internal/fn$2;->b:Lcom/tapjoy/internal/fn;

    invoke-static {v0}, Lcom/tapjoy/internal/fn;->a(Lcom/tapjoy/internal/fn;)Lcom/tapjoy/internal/fb;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fn$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/fb;->a(Ljava/lang/String;)V

    return-void
.end method
