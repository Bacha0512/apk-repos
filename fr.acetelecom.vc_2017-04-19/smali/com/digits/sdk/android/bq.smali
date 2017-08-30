.class Lcom/digits/sdk/android/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/sdk/android/core/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/sdk/android/core/k",
        "<",
        "Lcom/digits/sdk/android/aw;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/digits/sdk/android/ar;

.field private b:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;",
            "Lcom/digits/sdk/android/ar;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/digits/sdk/android/bq;->b:Lcom/twitter/sdk/android/core/k;

    iput-object p2, p0, Lcom/digits/sdk/android/bq;->a:Lcom/digits/sdk/android/ar;

    return-void
.end method


# virtual methods
.method public a()Lcom/digits/sdk/android/aw;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bq;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/aw;

    return-object v0
.end method

.method public a(J)Lcom/digits/sdk/android/aw;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bq;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0, p1, p2}, Lcom/twitter/sdk/android/core/k;->c(J)Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/aw;

    return-object v0
.end method

.method public a(JLcom/digits/sdk/android/aw;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bq;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0, p1, p2, p3}, Lcom/twitter/sdk/android/core/k;->a(JLcom/twitter/sdk/android/core/j;)V

    return-void
.end method

.method public bridge synthetic a(JLcom/twitter/sdk/android/core/j;)V
    .locals 1

    check-cast p3, Lcom/digits/sdk/android/aw;

    invoke-virtual {p0, p1, p2, p3}, Lcom/digits/sdk/android/bq;->a(JLcom/digits/sdk/android/aw;)V

    return-void
.end method

.method public a(Lcom/digits/sdk/android/aw;)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bq;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0, p1}, Lcom/twitter/sdk/android/core/k;->a(Lcom/twitter/sdk/android/core/j;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/twitter/sdk/android/core/j;)V
    .locals 0

    check-cast p1, Lcom/digits/sdk/android/aw;

    invoke-virtual {p0, p1}, Lcom/digits/sdk/android/bq;->a(Lcom/digits/sdk/android/aw;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/digits/sdk/android/bq;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/bq;->b:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0, p1, p2}, Lcom/twitter/sdk/android/core/k;->b(J)V

    return-void
.end method

.method public synthetic c()Lcom/twitter/sdk/android/core/j;
    .locals 1

    invoke-virtual {p0}, Lcom/digits/sdk/android/bq;->a()Lcom/digits/sdk/android/aw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(J)Lcom/twitter/sdk/android/core/j;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/digits/sdk/android/bq;->a(J)Lcom/digits/sdk/android/aw;

    move-result-object v0

    return-object v0
.end method
