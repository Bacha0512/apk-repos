.class public final Lcom/fyber/utils/testsuite/c$a;
.super Lcom/fyber/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/utils/testsuite/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/e$a",
        "<",
        "Lcom/fyber/utils/testsuite/c;",
        "Lcom/fyber/utils/testsuite/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fyber/ads/internal/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/fyber/ads/internal/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/b/e$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/fyber/utils/testsuite/c;
    .locals 1

    invoke-super {p0}, Lcom/fyber/b/e$a;->f()Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/testsuite/c;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "testsuite_tracking"

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method protected final synthetic e()Lcom/fyber/b/e;
    .locals 1

    new-instance v0, Lcom/fyber/utils/testsuite/c;

    invoke-direct {v0, p0}, Lcom/fyber/utils/testsuite/c;-><init>(Lcom/fyber/utils/testsuite/c$a;)V

    return-object v0
.end method

.method protected final bridge synthetic f()Lcom/fyber/b/e;
    .locals 1

    invoke-super {p0}, Lcom/fyber/b/e$a;->f()Lcom/fyber/b/e;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/testsuite/c;

    return-object v0
.end method
