.class Lb/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/y;

.field private final b:I

.field private final c:Lb/z;

.field private final d:Z


# direct methods
.method constructor <init>(Lb/y;ILb/z;Z)V
    .locals 0

    iput-object p1, p0, Lb/y$a;->a:Lb/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lb/y$a;->b:I

    iput-object p3, p0, Lb/y$a;->c:Lb/z;

    iput-boolean p4, p0, Lb/y$a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lb/z;)Lb/ab;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/y$a;->b:I

    iget-object v1, p0, Lb/y$a;->a:Lb/y;

    invoke-static {v1}, Lb/y;->b(Lb/y;)Lb/w;

    move-result-object v1

    invoke-virtual {v1}, Lb/w;->v()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Lb/y$a;

    iget-object v0, p0, Lb/y$a;->a:Lb/y;

    iget v2, p0, Lb/y$a;->b:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Lb/y$a;->d:Z

    invoke-direct {v1, v0, v2, p1, v3}, Lb/y$a;-><init>(Lb/y;ILb/z;Z)V

    iget-object v0, p0, Lb/y$a;->a:Lb/y;

    invoke-static {v0}, Lb/y;->b(Lb/y;)Lb/w;

    move-result-object v0

    invoke-virtual {v0}, Lb/w;->v()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lb/y$a;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/t;

    invoke-interface {v0, v1}, Lb/t;->a(Lb/t$a;)Lb/ab;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "application interceptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returned null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lb/y$a;->a:Lb/y;

    iget-boolean v1, p0, Lb/y$a;->d:Z

    invoke-virtual {v0, p1, v1}, Lb/y;->a(Lb/z;Z)Lb/ab;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lb/z;
    .locals 1

    iget-object v0, p0, Lb/y$a;->c:Lb/z;

    return-object v0
.end method
