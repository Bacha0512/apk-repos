.class public Lcom/oneaudience/sdk/b/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneaudience/sdk/b/b/b$b;,
        Lcom/oneaudience/sdk/b/b/b$a;
    }
.end annotation


# direct methods
.method public static final a(Ljava/util/Collection;Lcom/oneaudience/sdk/b/b/b$a;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TI;>;",
            "Lcom/oneaudience/sdk/b/b/b$a",
            "<TI;TO;>;)",
            "Ljava/util/Collection",
            "<TO;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneaudience/sdk/b/b/b;->a(Ljava/util/Iterator;Lcom/oneaudience/sdk/b/b/b$a;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/util/Iterator;Lcom/oneaudience/sdk/b/b/b$a;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TI;>;",
            "Lcom/oneaudience/sdk/b/b/b$a",
            "<TI;TO;>;)",
            "Ljava/util/Collection",
            "<TO;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/oneaudience/sdk/b/b/b$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final a(Ljava/util/Iterator;Lcom/oneaudience/sdk/b/b/b$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TI;>;",
            "Lcom/oneaudience/sdk/b/b/b$b",
            "<TI;TO;>;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oneaudience/sdk/b/b/b$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
