.class public abstract La/a/a/a/a/c/f;
.super La/a/a/a/a/c/a;

# interfaces
.implements La/a/a/a/a/c/b;
.implements La/a/a/a/a/c/h;
.implements La/a/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/a/c/f$a;
    }
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
        "La/a/a/a/a/c/a",
        "<TParams;TProgress;TResult;>;",
        "La/a/a/a/a/c/b",
        "<",
        "La/a/a/a/a/c/k;",
        ">;",
        "La/a/a/a/a/c/h;",
        "La/a/a/a/a/c/k;"
    }
.end annotation


# instance fields
.field private final a:La/a/a/a/a/c/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, La/a/a/a/a/c/a;-><init>()V

    new-instance v0, La/a/a/a/a/c/i;

    invoke-direct {v0}, La/a/a/a/a/c/i;-><init>()V

    iput-object v0, p0, La/a/a/a/a/c/f;->a:La/a/a/a/a/c/i;

    return-void
.end method


# virtual methods
.method public a(La/a/a/a/a/c/k;)V
    .locals 2

    invoke-virtual {p0}, La/a/a/a/a/c/f;->f_()La/a/a/a/a/c/a$d;

    move-result-object v0

    sget-object v1, La/a/a/a/a/c/a$d;->a:La/a/a/a/a/c/a$d;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not add Dependency after task is running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, La/a/a/a/a/c/f;->g()La/a/a/a/a/c/b;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c/h;

    check-cast v0, La/a/a/a/a/c/b;

    invoke-interface {v0, p1}, La/a/a/a/a/c/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/c/f;->g()La/a/a/a/a/c/b;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c/h;

    check-cast v0, La/a/a/a/a/c/k;

    invoke-interface {v0, p1}, La/a/a/a/a/c/k;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs a(Ljava/util/concurrent/ExecutorService;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "[TParams;)V"
        }
    .end annotation

    new-instance v0, La/a/a/a/a/c/f$a;

    invoke-direct {v0, p1, p0}, La/a/a/a/a/c/f$a;-><init>(Ljava/util/concurrent/Executor;La/a/a/a/a/c/f;)V

    invoke-super {p0, v0, p2}, La/a/a/a/a/c/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)La/a/a/a/a/c/a;

    return-void
.end method

.method public b()La/a/a/a/a/c/e;
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/c/f;->g()La/a/a/a/a/c/b;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c/h;

    invoke-interface {v0}, La/a/a/a/a/c/h;->b()La/a/a/a/a/c/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/c/f;->g()La/a/a/a/a/c/b;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c/h;

    check-cast v0, La/a/a/a/a/c/k;

    invoke-interface {v0, p1}, La/a/a/a/a/c/k;->b(Z)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, La/a/a/a/a/c/k;

    invoke-virtual {p0, p1}, La/a/a/a/a/c/f;->a(La/a/a/a/a/c/k;)V

    return-void
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/c/f;->g()La/a/a/a/a/c/b;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c/h;

    check-cast v0, La/a/a/a/a/c/b;

    invoke-interface {v0}, La/a/a/a/a/c/b;->c()Z

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0, p1}, La/a/a/a/a/c/e;->a(La/a/a/a/a/c/h;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/c/f;->g()La/a/a/a/a/c/b;

    move-result-object v0

    check-cast v0, La/a/a/a/a/c/h;

    check-cast v0, La/a/a/a/a/c/k;

    invoke-interface {v0}, La/a/a/a/a/c/k;->f()Z

    move-result v0

    return v0
.end method

.method public g()La/a/a/a/a/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "La/a/a/a/a/c/b",
            "<",
            "La/a/a/a/a/c/k;",
            ">;:",
            "La/a/a/a/a/c/h;",
            ":",
            "La/a/a/a/a/c/k;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, La/a/a/a/a/c/f;->a:La/a/a/a/a/c/i;

    return-object v0
.end method
