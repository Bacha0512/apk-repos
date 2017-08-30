.class public final Lcom/tapjoy/internal/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/as;


# instance fields
.field public final a:Ljava/lang/Object;

.field protected b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/aq;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/tapjoy/internal/aq;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/aq;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/aq;->b:Ljava/lang/Object;

    return-void
.end method
