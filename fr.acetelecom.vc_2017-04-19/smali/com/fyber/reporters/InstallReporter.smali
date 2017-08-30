.class public Lcom/fyber/reporters/InstallReporter;
.super Lcom/fyber/reporters/AdvertiserReporter;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/reporters/AdvertiserReporter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/fyber/reporters/InstallReporter;
    .locals 1

    new-instance v0, Lcom/fyber/reporters/InstallReporter;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/InstallReporter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fyber/reporters/InstallReporter;->a:Lcom/fyber/reporters/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v0, Lcom/fyber/reporters/InstallReporter$1;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/InstallReporter$1;-><init>(Lcom/fyber/reporters/InstallReporter;)V

    return-object v0
.end method
