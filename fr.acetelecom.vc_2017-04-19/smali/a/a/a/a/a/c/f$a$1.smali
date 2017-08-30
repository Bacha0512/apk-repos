.class La/a/a/a/a/c/f$a$1;
.super La/a/a/a/a/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/a/c/f$a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/a/c/g",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/a/c/f$a;


# direct methods
.method constructor <init>(La/a/a/a/a/c/f$a;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La/a/a/a/a/c/f$a$1;->a:La/a/a/a/a/c/f$a;

    invoke-direct {p0, p2, p3}, La/a/a/a/a/c/g;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()La/a/a/a/a/c/b;
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

    iget-object v0, p0, La/a/a/a/a/c/f$a$1;->a:La/a/a/a/a/c/f$a;

    invoke-static {v0}, La/a/a/a/a/c/f$a;->a(La/a/a/a/a/c/f$a;)La/a/a/a/a/c/f;

    move-result-object v0

    return-object v0
.end method
