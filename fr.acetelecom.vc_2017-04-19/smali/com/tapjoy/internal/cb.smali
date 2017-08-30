.class public final Lcom/tapjoy/internal/cb;
.super Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/tapjoy/internal/ca;
    .locals 1

    invoke-super {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ca;

    return-object v0
.end method

.method public final bridge synthetic poll()Ljava/lang/ref/Reference;
    .locals 1

    invoke-super {p0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/ca;

    return-object v0
.end method
