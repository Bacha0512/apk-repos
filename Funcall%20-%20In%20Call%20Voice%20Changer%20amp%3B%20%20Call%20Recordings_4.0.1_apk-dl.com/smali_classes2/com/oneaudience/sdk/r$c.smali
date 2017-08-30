.class final Lcom/oneaudience/sdk/r$c;
.super Lcom/oneaudience/sdk/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneaudience/sdk/b",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private final d:Landroid/os/Handler;

.field private final e:Lcom/oneaudience/sdk/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneaudience/sdk/q",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/oneaudience/sdk/r$b;

.field private final g:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/oneaudience/sdk/q;Lcom/oneaudience/sdk/r$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneaudience/sdk/q",
            "<TParams;TProgress;TResult;>;",
            "Lcom/oneaudience/sdk/r$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oneaudience/sdk/b;-><init>()V

    new-instance v0, Lcom/oneaudience/sdk/r$c$1;

    invoke-direct {v0, p0}, Lcom/oneaudience/sdk/r$c$1;-><init>(Lcom/oneaudience/sdk/r$c;)V

    iput-object v0, p0, Lcom/oneaudience/sdk/r$c;->d:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneaudience/sdk/r$c;->e:Lcom/oneaudience/sdk/q;

    iput-object p2, p0, Lcom/oneaudience/sdk/r$c;->f:Lcom/oneaudience/sdk/r$b;

    check-cast p2, Lcom/oneaudience/sdk/l$i;

    iget-object v0, p2, Lcom/oneaudience/sdk/l$i;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneaudience/sdk/r$c;->g:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneaudience/sdk/q;Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/r$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneaudience/sdk/r$c;-><init>(Lcom/oneaudience/sdk/q;Lcom/oneaudience/sdk/r$b;)V

    return-void
.end method

.method static synthetic a(Lcom/oneaudience/sdk/r$c;)Lcom/oneaudience/sdk/r$b;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->f:Lcom/oneaudience/sdk/r$b;

    return-object v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message_extra_exception"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic b(Lcom/oneaudience/sdk/r$c;)Lcom/oneaudience/sdk/q;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->e:Lcom/oneaudience/sdk/q;

    return-object v0
.end method

.method static synthetic c(Lcom/oneaudience/sdk/r$c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->e:Lcom/oneaudience/sdk/q;

    invoke-virtual {v0, p1}, Lcom/oneaudience/sdk/q;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/r$c;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->e:Lcom/oneaudience/sdk/q;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/q;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/r$c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->e:Lcom/oneaudience/sdk/q;

    invoke-virtual {v0, p1}, Lcom/oneaudience/sdk/q;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/r$c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->e:Lcom/oneaudience/sdk/q;

    invoke-virtual {v0}, Lcom/oneaudience/sdk/q;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/r$c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/oneaudience/sdk/r$c;->e:Lcom/oneaudience/sdk/q;

    invoke-virtual {v0, p1}, Lcom/oneaudience/sdk/q;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/oneaudience/sdk/r$c;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
