.class public Lcom/digits/sdk/android/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/internal/e$a;
    }
.end annotation


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

    new-instance v1, Lcom/digits/sdk/android/internal/e$1;

    invoke-direct {v1, p0, v0}, Lcom/digits/sdk/android/internal/e$1;-><init>(Lcom/digits/sdk/android/internal/e;Lcom/google/a/w;)V

    return-object v1
.end method
