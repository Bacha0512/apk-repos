.class final Lcom/fyber/reporters/RewardedActionReporter$1;
.super Lcom/fyber/reporters/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/reporters/RewardedActionReporter;->e()Lcom/fyber/reporters/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/reporters/RewardedActionReporter;


# direct methods
.method constructor <init>(Lcom/fyber/reporters/RewardedActionReporter;)V
    .locals 0

    iput-object p1, p0, Lcom/fyber/reporters/RewardedActionReporter$1;->a:Lcom/fyber/reporters/RewardedActionReporter;

    invoke-direct {p0}, Lcom/fyber/reporters/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/fyber/reporters/RewardedActionReporter$1;->a:Lcom/fyber/reporters/RewardedActionReporter;

    iget-object v0, v0, Lcom/fyber/reporters/RewardedActionReporter;->a:Lcom/fyber/reporters/a/a;

    iget-object v1, p0, Lcom/fyber/reporters/RewardedActionReporter$1;->a:Lcom/fyber/reporters/RewardedActionReporter;

    invoke-static {v1}, Lcom/fyber/reporters/RewardedActionReporter;->a(Lcom/fyber/reporters/RewardedActionReporter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    const-string v0, "RewardedActionReporter"

    return-object v0
.end method
