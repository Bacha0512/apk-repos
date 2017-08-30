.class public final Lcom/fyber/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/fyber/utils/u;

.field private b:Lcom/fyber/reporters/a/c;


# direct methods
.method public constructor <init>(Lcom/fyber/utils/u;Lcom/fyber/reporters/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/b/j;->a:Lcom/fyber/utils/u;

    iput-object p2, p0, Lcom/fyber/b/j;->b:Lcom/fyber/reporters/a/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/fyber/b/j;->a:Lcom/fyber/utils/u;

    invoke-virtual {v0}, Lcom/fyber/utils/u;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReporterOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "event will be sent to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fyber/utils/i;->b(Ljava/lang/String;)Lcom/fyber/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/i;->a()Lcom/fyber/utils/b;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/i;

    invoke-virtual {v0}, Lcom/fyber/utils/i;->b()I

    move-result v0

    const-string v1, "ReporterOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Server returned status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/fyber/b/j;->b:Lcom/fyber/reporters/a/c;

    invoke-virtual {v0}, Lcom/fyber/reporters/a/c;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/fyber/b/j;->b:Lcom/fyber/reporters/a/c;

    invoke-virtual {v1, v0}, Lcom/fyber/reporters/a/c;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReporterOperation"

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
