.class public abstract Lcom/twitter/sdk/android/core/c;
.super Ljava/lang/Object;

# interfaces
.implements Ld/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/d",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/twitter/sdk/android/core/i;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/twitter/sdk/android/core/p;)V
.end method

.method public final a(Ld/b;Ld/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<TT;>;",
            "Ld/l",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ld/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/twitter/sdk/android/core/i;

    invoke-virtual {p2}, Ld/l;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/i;-><init>(Ljava/lang/Object;Ld/l;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/i;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/core/m;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/core/m;-><init>(Ld/l;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/p;)V

    goto :goto_0
.end method

.method public final a(Ld/b;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/b",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/twitter/sdk/android/core/p;

    const-string v1, "Request Failure"

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/c;->a(Lcom/twitter/sdk/android/core/p;)V

    return-void
.end method
