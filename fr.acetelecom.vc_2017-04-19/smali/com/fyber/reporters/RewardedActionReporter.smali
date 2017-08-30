.class public Lcom/fyber/reporters/RewardedActionReporter;
.super Lcom/fyber/reporters/AdvertiserReporter;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/fyber/reporters/AdvertiserReporter;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/fyber/reporters/RewardedActionReporter;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/fyber/reporters/RewardedActionReporter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fyber/reporters/RewardedActionReporter;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/reporters/RewardedActionReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/exceptions/IdException;
        }
    .end annotation

    invoke-static {p1}, Lcom/fyber/utils/k;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/fyber/reporters/RewardedActionReporter;

    invoke-direct {v0, p0, p1}, Lcom/fyber/reporters/RewardedActionReporter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/fyber/utils/u;)Lcom/fyber/utils/u;
    .locals 2

    const-string v0, "action_id"

    iget-object v1, p0, Lcom/fyber/reporters/RewardedActionReporter;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/fyber/utils/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/fyber/reporters/AdvertiserReporter;->a(Lcom/fyber/utils/u;)Lcom/fyber/utils/u;

    move-result-object v0

    return-object v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fyber/reporters/RewardedActionReporter;->a:Lcom/fyber/reporters/a/a;

    iget-object v1, p0, Lcom/fyber/reporters/RewardedActionReporter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    const-string v0, "actions"

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    const-string v0, "RewardedActionReporter"

    return-object v0
.end method

.method protected final e()Lcom/fyber/reporters/a/c;
    .locals 1

    new-instance v0, Lcom/fyber/reporters/RewardedActionReporter$1;

    invoke-direct {v0, p0}, Lcom/fyber/reporters/RewardedActionReporter$1;-><init>(Lcom/fyber/reporters/RewardedActionReporter;)V

    return-object v0
.end method
