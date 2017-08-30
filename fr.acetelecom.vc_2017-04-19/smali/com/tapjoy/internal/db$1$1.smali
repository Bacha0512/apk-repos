.class final Lcom/tapjoy/internal/db$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/db$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/db$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/db$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    iget-object v0, v0, Lcom/tapjoy/internal/db$1;->a:Lcom/tapjoy/internal/db;

    invoke-virtual {v0}, Lcom/tapjoy/internal/db;->a()V

    iget-object v0, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/db$1;->c()V

    iget-object v0, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dd;->f()Lcom/tapjoy/internal/dg$a;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/dg$a;->c:Lcom/tapjoy/internal/dg$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    iget-object v0, v0, Lcom/tapjoy/internal/db$1;->a:Lcom/tapjoy/internal/db;

    invoke-virtual {v0}, Lcom/tapjoy/internal/db;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    iget-object v0, v0, Lcom/tapjoy/internal/db$1;->a:Lcom/tapjoy/internal/db;

    invoke-virtual {v0}, Lcom/tapjoy/internal/db;->c()V

    iget-object v0, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/db$1;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    iget-object v1, v1, Lcom/tapjoy/internal/db$1;->a:Lcom/tapjoy/internal/db;

    invoke-virtual {v1}, Lcom/tapjoy/internal/db;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/internal/db$1$1;->a:Lcom/tapjoy/internal/db$1;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/db$1;->a(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/tapjoy/internal/cs;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :catch_2
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/tapjoy/internal/db;->g()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Error while attempting to shut down the service after failure."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method
