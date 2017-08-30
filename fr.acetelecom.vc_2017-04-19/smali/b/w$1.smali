.class final Lb/w$1;
.super Lb/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/j;Lb/a;Lb/a/b/r;)Lb/a/c/b;
    .locals 1

    invoke-virtual {p1, p2, p3}, Lb/j;->a(Lb/a;Lb/a/b/r;)Lb/a/c/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/w;)Lb/a/d;
    .locals 1

    invoke-virtual {p1}, Lb/w;->g()Lb/a/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/j;)Lb/a/h;
    .locals 1

    iget-object v0, p1, Lb/j;->a:Lb/a/h;

    return-object v0
.end method

.method public a(Lb/k;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lb/k;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public a(Lb/r$a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lb/r$a;->a(Ljava/lang/String;)Lb/r$a;

    return-void
.end method

.method public a(Lb/j;Lb/a/c/b;)Z
    .locals 1

    invoke-virtual {p1, p2}, Lb/j;->b(Lb/a/c/b;)Z

    move-result v0

    return v0
.end method

.method public b(Lb/j;Lb/a/c/b;)V
    .locals 0

    invoke-virtual {p1, p2}, Lb/j;->a(Lb/a/c/b;)V

    return-void
.end method
