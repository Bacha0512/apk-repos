.class final Ld/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Ld/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/b",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ld/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ld/b",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/g$a;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ld/g$a;->b:Ld/b;

    return-void
.end method


# virtual methods
.method public a()Ld/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/l",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ld/g$a;->b:Ld/b;

    invoke-interface {v0}, Ld/b;->a()Ld/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Ld/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/d",
            "<TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callback == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ld/g$a;->b:Ld/b;

    new-instance v1, Ld/g$a$1;

    invoke-direct {v1, p0, p1}, Ld/g$a$1;-><init>(Ld/g$a;Ld/d;)V

    invoke-interface {v0, v1}, Ld/b;->a(Ld/d;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Ld/g$a;->b:Ld/b;

    invoke-interface {v0}, Ld/b;->b()Z

    move-result v0

    return v0
.end method

.method public c()Ld/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ld/g$a;

    iget-object v1, p0, Ld/g$a;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Ld/g$a;->b:Ld/b;

    invoke-interface {v2}, Ld/b;->c()Ld/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ld/g$a;-><init>(Ljava/util/concurrent/Executor;Ld/b;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ld/g$a;->c()Ld/b;

    move-result-object v0

    return-object v0
.end method
