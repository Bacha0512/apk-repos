.class public abstract Lcom/fyber/reporters/AdvertiserReporter;
.super Lcom/fyber/reporters/Reporter;


# instance fields
.field protected a:Lcom/fyber/reporters/a/a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/reporters/Reporter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/fyber/utils/u;)Lcom/fyber/utils/u;
    .locals 2

    iget-object v0, p0, Lcom/fyber/reporters/AdvertiserReporter;->a:Lcom/fyber/reporters/a/a;

    invoke-virtual {v0}, Lcom/fyber/reporters/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "subid"

    invoke-virtual {p1, v1, v0}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    :cond_0
    iget-object v0, p0, Lcom/fyber/reporters/AdvertiserReporter;->a:Lcom/fyber/reporters/a/a;

    invoke-virtual {v0}, Lcom/fyber/reporters/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "install_referrer"

    invoke-virtual {p1, v1, v0}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    :cond_1
    const-string v0, "answer_received"

    invoke-virtual {p0}, Lcom/fyber/reporters/AdvertiserReporter;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/utils/u;->a(Z)Lcom/fyber/utils/u;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected final b()Lcom/fyber/a/a;
    .locals 2

    new-instance v0, Lcom/fyber/a/a$a;

    iget-object v1, p0, Lcom/fyber/reporters/AdvertiserReporter;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fyber/a/a$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/a/a$a;->a()Lcom/fyber/a/a;

    move-result-object v0

    return-object v0
.end method

.method public report(Landroid/content/Context;)Z
    .locals 1

    new-instance v0, Lcom/fyber/reporters/a/a;

    invoke-direct {v0, p1}, Lcom/fyber/reporters/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/reporters/AdvertiserReporter;->a:Lcom/fyber/reporters/a/a;

    invoke-super {p0, p1}, Lcom/fyber/reporters/Reporter;->report(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
