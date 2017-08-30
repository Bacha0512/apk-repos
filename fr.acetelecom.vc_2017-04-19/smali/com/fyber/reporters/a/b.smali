.class public final Lcom/fyber/reporters/a/b;
.super Lcom/fyber/reporters/Reporter;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/reporters/Reporter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/fyber/reporters/a/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/exceptions/IdException;
        }
    .end annotation

    invoke-static {p0}, Lcom/fyber/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/fyber/exceptions/IdException;

    const-string v1, "Advertiser AppID cannot be used to report an appstart"

    invoke-direct {v0, v1}, Lcom/fyber/exceptions/IdException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/fyber/reporters/a/b;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/a/b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/fyber/utils/u;)Lcom/fyber/utils/u;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/fyber/utils/u;->a(Z)Lcom/fyber/utils/u;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lcom/fyber/a/a;
    .locals 1

    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->e()Lcom/fyber/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "installs"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "InstallReporter"

    return-object v0
.end method

.method protected final e()Lcom/fyber/reporters/a/c;
    .locals 1

    new-instance v0, Lcom/fyber/reporters/a/b$1;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/a/b$1;-><init>(Lcom/fyber/reporters/a/b;)V

    return-object v0
.end method
