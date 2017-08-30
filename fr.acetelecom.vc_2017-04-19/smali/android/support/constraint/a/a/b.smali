.class public Landroid/support/constraint/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/b$a;,
        Landroid/support/constraint/a/a/b$b;,
        Landroid/support/constraint/a/a/b$c;
    }
.end annotation


# instance fields
.field final a:Landroid/support/constraint/a/a/c;

.field final b:Landroid/support/constraint/a/a/b$c;

.field c:Landroid/support/constraint/a/a/b;

.field d:I

.field e:I

.field f:Landroid/support/constraint/a/g;

.field g:I

.field private h:Landroid/support/constraint/a/a/b$b;

.field private i:Landroid/support/constraint/a/a/b$a;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/support/constraint/a/a/b;->d:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/b;->e:I

    sget-object v0, Landroid/support/constraint/a/a/b$b;->a:Landroid/support/constraint/a/a/b$b;

    iput-object v0, p0, Landroid/support/constraint/a/a/b;->h:Landroid/support/constraint/a/a/b$b;

    sget-object v0, Landroid/support/constraint/a/a/b$a;->a:Landroid/support/constraint/a/a/b$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/b;->i:Landroid/support/constraint/a/a/b$a;

    iput v1, p0, Landroid/support/constraint/a/a/b;->j:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/constraint/a/a/b;->g:I

    iput-object p1, p0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iput-object p2, p0, Landroid/support/constraint/a/a/b;->b:Landroid/support/constraint/a/a/b$c;

    return-void
.end method

.method private a(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/support/constraint/a/a/b;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/b;->b:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b$c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " connected to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    invoke-direct {v2, p1}, Landroid/support/constraint/a/a/b;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "<-"

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/support/constraint/a/g;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    return-object v0
.end method

.method public a(Landroid/support/constraint/a/a/b$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/b;->i:Landroid/support/constraint/a/a/b$a;

    return-void
.end method

.method public a(Landroid/support/constraint/a/c;)V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/constraint/a/g;

    sget-object v1, Landroid/support/constraint/a/g$b;->a:Landroid/support/constraint/a/g$b;

    invoke-direct {v0, p1, v1}, Landroid/support/constraint/a/g;-><init>(Landroid/support/constraint/a/c;Landroid/support/constraint/a/g$b;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {v0}, Landroid/support/constraint/a/g;->a()V

    goto :goto_0
.end method

.method public a(Landroid/support/constraint/a/a/b;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/support/constraint/a/a/b;->c()Landroid/support/constraint/a/a/b$c;

    move-result-object v3

    iget-object v2, p0, Landroid/support/constraint/a/a/b;->b:Landroid/support/constraint/a/a/b$c;

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Landroid/support/constraint/a/a/b;->b:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->g:Landroid/support/constraint/a/a/b$c;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/constraint/a/a/b;->b:Landroid/support/constraint/a/a/b$c;

    sget-object v3, Landroid/support/constraint/a/a/b$c;->f:Landroid/support/constraint/a/a/b$c;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/support/constraint/a/a/b;->b()Landroid/support/constraint/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/b;->b()Landroid/support/constraint/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/support/constraint/a/a/b$1;->a:[I

    iget-object v4, p0, Landroid/support/constraint/a/a/b;->b:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b$c;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v2, Landroid/support/constraint/a/a/b$c;->f:Landroid/support/constraint/a/a/b$c;

    if-eq v3, v2, :cond_4

    sget-object v2, Landroid/support/constraint/a/a/b$c;->h:Landroid/support/constraint/a/a/b$c;

    if-eq v3, v2, :cond_4

    sget-object v2, Landroid/support/constraint/a/a/b$c;->i:Landroid/support/constraint/a/a/b$c;

    if-eq v3, v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_1
    sget-object v2, Landroid/support/constraint/a/a/b$c;->b:Landroid/support/constraint/a/a/b$c;

    if-eq v3, v2, :cond_5

    sget-object v2, Landroid/support/constraint/a/a/b$c;->d:Landroid/support/constraint/a/a/b$c;

    if-ne v3, v2, :cond_7

    :cond_5
    move v2, v0

    :goto_2
    invoke-virtual {p1}, Landroid/support/constraint/a/a/b;->b()Landroid/support/constraint/a/a/c;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/a/a/e;

    if-eqz v4, :cond_b

    if-nez v2, :cond_6

    sget-object v2, Landroid/support/constraint/a/a/b$c;->h:Landroid/support/constraint/a/a/b$c;

    if-ne v3, v2, :cond_0

    :cond_6
    move v1, v0

    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_2

    :pswitch_2
    sget-object v2, Landroid/support/constraint/a/a/b$c;->c:Landroid/support/constraint/a/a/b$c;

    if-eq v3, v2, :cond_8

    sget-object v2, Landroid/support/constraint/a/a/b$c;->e:Landroid/support/constraint/a/a/b$c;

    if-ne v3, v2, :cond_a

    :cond_8
    move v2, v0

    :goto_3
    invoke-virtual {p1}, Landroid/support/constraint/a/a/b;->b()Landroid/support/constraint/a/a/c;

    move-result-object v4

    instance-of v4, v4, Landroid/support/constraint/a/a/e;

    if-eqz v4, :cond_b

    if-nez v2, :cond_9

    sget-object v2, Landroid/support/constraint/a/a/b$c;->i:Landroid/support/constraint/a/a/b$c;

    if-ne v3, v2, :cond_0

    :cond_9
    move v1, v0

    goto :goto_0

    :cond_a
    move v2, v1

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/support/constraint/a/a/b;IILandroid/support/constraint/a/a/b$b;IZ)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iput v1, p0, Landroid/support/constraint/a/a/b;->d:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/constraint/a/a/b;->e:I

    sget-object v1, Landroid/support/constraint/a/a/b$b;->a:Landroid/support/constraint/a/a/b$b;

    iput-object v1, p0, Landroid/support/constraint/a/a/b;->h:Landroid/support/constraint/a/a/b$b;

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/constraint/a/a/b;->j:I

    :goto_0
    return v0

    :cond_0
    if-nez p6, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-lez p2, :cond_2

    iput p2, p0, Landroid/support/constraint/a/a/b;->d:I

    :goto_1
    iput p3, p0, Landroid/support/constraint/a/a/b;->e:I

    iput-object p4, p0, Landroid/support/constraint/a/a/b;->h:Landroid/support/constraint/a/a/b$b;

    iput p5, p0, Landroid/support/constraint/a/a/b;->j:I

    goto :goto_0

    :cond_2
    iput v1, p0, Landroid/support/constraint/a/a/b;->d:I

    goto :goto_1
.end method

.method public a(Landroid/support/constraint/a/a/b;ILandroid/support/constraint/a/a/b$b;I)Z
    .locals 7

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b;IILandroid/support/constraint/a/a/b$b;IZ)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/constraint/a/a/c;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    return-object v0
.end method

.method public c()Landroid/support/constraint/a/a/b$c;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->b:Landroid/support/constraint/a/a/b$c;

    return-object v0
.end method

.method public d()I
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->c()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/b;->e:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->c()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/support/constraint/a/a/b;->e:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/b;->d:I

    goto :goto_0
.end method

.method public e()Landroid/support/constraint/a/a/b$b;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->h:Landroid/support/constraint/a/a/b$b;

    return-object v0
.end method

.method public f()Landroid/support/constraint/a/a/b;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    return-object v0
.end method

.method public g()Landroid/support/constraint/a/a/b$a;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/b;->i:Landroid/support/constraint/a/a/b$a;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/b;->j:I

    return v0
.end method

.method public i()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iput v1, p0, Landroid/support/constraint/a/a/b;->d:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/constraint/a/a/b;->e:I

    sget-object v0, Landroid/support/constraint/a/a/b$b;->b:Landroid/support/constraint/a/a/b$b;

    iput-object v0, p0, Landroid/support/constraint/a/a/b;->h:Landroid/support/constraint/a/a/b$b;

    iput v1, p0, Landroid/support/constraint/a/a/b;->j:I

    sget-object v0, Landroid/support/constraint/a/a/b$a;->a:Landroid/support/constraint/a/a/b$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/b;->i:Landroid/support/constraint/a/a/b$a;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/a/a/b;->b:Landroid/support/constraint/a/a/b$c;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/b$c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " connected to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    invoke-direct {v3, v0}, Landroid/support/constraint/a/a/b;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
