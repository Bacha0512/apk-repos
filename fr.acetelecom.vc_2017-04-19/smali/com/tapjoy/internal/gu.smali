.class public final Lcom/tapjoy/internal/gu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/bh;


# instance fields
.field private final a:Lcom/tapjoy/internal/dw;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/dw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/dw;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/tapjoy/internal/du;

    invoke-interface {p2, p1}, Lcom/tapjoy/internal/du;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/gu;->a:Lcom/tapjoy/internal/dw;

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/dw;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/du;

    return-object v0
.end method
