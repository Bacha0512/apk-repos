.class public Lcom/a/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/a/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/a/a/a/a/a;->a()Lcom/a/a/a/a/a;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    sput-object v0, Lcom/a/a/a/a/b;->a:Lcom/a/a/a/a/d;

    return-void

    :catch_0
    move-exception v1

    const-string v2, "AnswersOptionalLogger"

    const-string v3, "Unexpected error creating AnswersKitEventLogger"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/a/a/a/a/e;->a()Lcom/a/a/a/a/d;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static a()Lcom/a/a/a/a/d;
    .locals 1

    sget-object v0, Lcom/a/a/a/a/b;->a:Lcom/a/a/a/a/d;

    return-object v0
.end method
