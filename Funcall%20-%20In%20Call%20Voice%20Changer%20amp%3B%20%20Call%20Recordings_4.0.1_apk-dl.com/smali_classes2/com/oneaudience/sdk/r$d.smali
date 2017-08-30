.class public final Lcom/oneaudience/sdk/r$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/oneaudience/sdk/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneaudience/sdk/q",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private b:Lcom/oneaudience/sdk/r$b;

.field private c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneaudience/sdk/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneaudience/sdk/q",
            "<TParams;TProgress;TResult;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneaudience/sdk/r$d;->b:Lcom/oneaudience/sdk/r$b;

    iput-object v0, p0, Lcom/oneaudience/sdk/r$d;->c:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneaudience/sdk/r$d;->a:Lcom/oneaudience/sdk/q;

    return-void
.end method


# virtual methods
.method public a()Lcom/oneaudience/sdk/b;
    .locals 4

    new-instance v0, Lcom/oneaudience/sdk/r$c;

    iget-object v1, p0, Lcom/oneaudience/sdk/r$d;->a:Lcom/oneaudience/sdk/q;

    iget-object v2, p0, Lcom/oneaudience/sdk/r$d;->b:Lcom/oneaudience/sdk/r$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oneaudience/sdk/r$c;-><init>(Lcom/oneaudience/sdk/q;Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/r$1;)V

    sget-object v1, Lcom/oneaudience/sdk/b;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/oneaudience/sdk/r$d;->c:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oneaudience/sdk/r$c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/oneaudience/sdk/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/oneaudience/sdk/r$b;)Lcom/oneaudience/sdk/r$d;
    .locals 0

    iput-object p1, p0, Lcom/oneaudience/sdk/r$d;->b:Lcom/oneaudience/sdk/r$b;

    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/oneaudience/sdk/r$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/oneaudience/sdk/r$d;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneaudience/sdk/r$d;->c:[Ljava/lang/Object;

    return-object p0
.end method

.method public b()Lcom/oneaudience/sdk/b;
    .locals 4

    new-instance v0, Lcom/oneaudience/sdk/r$c;

    iget-object v1, p0, Lcom/oneaudience/sdk/r$d;->a:Lcom/oneaudience/sdk/q;

    iget-object v2, p0, Lcom/oneaudience/sdk/r$d;->b:Lcom/oneaudience/sdk/r$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oneaudience/sdk/r$c;-><init>(Lcom/oneaudience/sdk/q;Lcom/oneaudience/sdk/r$b;Lcom/oneaudience/sdk/r$1;)V

    sget-object v1, Lcom/oneaudience/sdk/b;->c:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/oneaudience/sdk/r$d;->c:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oneaudience/sdk/r$c;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/oneaudience/sdk/b;

    move-result-object v0

    return-object v0
.end method
