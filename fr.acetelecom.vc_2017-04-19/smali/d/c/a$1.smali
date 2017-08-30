.class final Ld/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ld/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/c/a;->a(Ld/l;)Ld/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ld/l;


# direct methods
.method constructor <init>(Ld/l;)V
    .locals 0

    iput-object p1, p0, Ld/c/a$1;->a:Ld/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Ld/c/a$1;->a:Ld/l;

    return-object v0
.end method

.method public a(Ld/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/d",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ld/c/a$1;->a:Ld/l;

    invoke-interface {p1, p0, v0}, Ld/d;->a(Ld/b;Ld/l;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Ld/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/b",
            "<TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ld/c/a$1;->c()Ld/b;

    move-result-object v0

    return-object v0
.end method
