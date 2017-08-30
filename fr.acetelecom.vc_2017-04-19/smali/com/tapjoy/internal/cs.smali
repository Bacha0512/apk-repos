.class public final Lcom/tapjoy/internal/cs;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 2

    invoke-static {p0}, Lcom/tapjoy/internal/cq;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const-class v1, Ljava/lang/Error;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/cs;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    const-class v1, Ljava/lang/RuntimeException;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/cs;->a(Ljava/lang/Throwable;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Class;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_0
    return-void
.end method
