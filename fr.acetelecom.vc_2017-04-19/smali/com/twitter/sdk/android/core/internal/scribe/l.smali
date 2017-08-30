.class public Lcom/twitter/sdk/android/core/internal/scribe/l;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/twitter/sdk/android/core/internal/scribe/a;


# direct methods
.method public static a()Lcom/twitter/sdk/android/core/internal/scribe/a;
    .locals 1

    sget-object v0, Lcom/twitter/sdk/android/core/internal/scribe/l;->a:Lcom/twitter/sdk/android/core/internal/scribe/a;

    return-object v0
.end method

.method public static a(Lcom/twitter/sdk/android/core/o;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;La/a/a/a/a/b/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/o;",
            "Lcom/twitter/sdk/android/core/k",
            "<+",
            "Lcom/twitter/sdk/android/core/j",
            "<",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;>;",
            "Lcom/twitter/sdk/android/core/e;",
            "La/a/a/a/a/b/m;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/a;

    const-string v2, "TwitterCore"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/a;-><init>(La/a/a/a/i;Ljava/lang/String;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;La/a/a/a/a/b/m;)V

    sput-object v0, Lcom/twitter/sdk/android/core/internal/scribe/l;->a:Lcom/twitter/sdk/android/core/internal/scribe/a;

    return-void
.end method
