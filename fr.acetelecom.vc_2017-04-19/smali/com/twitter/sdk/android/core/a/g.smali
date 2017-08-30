.class public Lcom/twitter/sdk/android/core/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/a/f;Lcom/google/a/c/a;)Lcom/google/a/w;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/f;",
            "Lcom/google/a/c/a",
            "<TT;>;)",
            "Lcom/google/a/w",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lcom/google/a/f;->a(Lcom/google/a/x;Lcom/google/a/c/a;)Lcom/google/a/w;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/core/a/g$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/twitter/sdk/android/core/a/g$1;-><init>(Lcom/twitter/sdk/android/core/a/g;Lcom/google/a/w;Lcom/google/a/c/a;)V

    return-object v1
.end method
