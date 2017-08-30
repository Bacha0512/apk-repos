.class Landroid/support/constraint/a/a/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/support/constraint/a/a/b;

.field private b:Landroid/support/constraint/a/a/b;

.field private c:I

.field private d:Landroid/support/constraint/a/a/b$b;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/support/constraint/a/a/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/b;->f()Landroid/support/constraint/a/a/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/h$a;->b:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/h$a;->c:I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/b;->e()Landroid/support/constraint/a/a/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/h$a;->d:Landroid/support/constraint/a/a/b$b;

    invoke-virtual {p1}, Landroid/support/constraint/a/a/b;->h()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/h$a;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/constraint/a/a/c;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->c()Landroid/support/constraint/a/a/b$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    iget-object v0, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->f()Landroid/support/constraint/a/a/b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/h$a;->b:Landroid/support/constraint/a/a/b;

    iget-object v0, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/h$a;->c:I

    iget-object v0, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->e()Landroid/support/constraint/a/a/b$b;

    move-result-object v0

    iput-object v0, p0, Landroid/support/constraint/a/a/h$a;->d:Landroid/support/constraint/a/a/b$b;

    iget-object v0, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->h()I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/h$a;->e:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/h$a;->b:Landroid/support/constraint/a/a/b;

    iput v1, p0, Landroid/support/constraint/a/a/h$a;->c:I

    sget-object v0, Landroid/support/constraint/a/a/b$b;->b:Landroid/support/constraint/a/a/b$b;

    iput-object v0, p0, Landroid/support/constraint/a/a/h$a;->d:Landroid/support/constraint/a/a/b$b;

    iput v1, p0, Landroid/support/constraint/a/a/h$a;->e:I

    goto :goto_0
.end method

.method public b(Landroid/support/constraint/a/a/c;)V
    .locals 5

    iget-object v0, p0, Landroid/support/constraint/a/a/h$a;->a:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->c()Landroid/support/constraint/a/a/b$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v0

    iget-object v1, p0, Landroid/support/constraint/a/a/h$a;->b:Landroid/support/constraint/a/a/b;

    iget v2, p0, Landroid/support/constraint/a/a/h$a;->c:I

    iget-object v3, p0, Landroid/support/constraint/a/a/h$a;->d:Landroid/support/constraint/a/a/b$b;

    iget v4, p0, Landroid/support/constraint/a/a/h$a;->e:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b;ILandroid/support/constraint/a/a/b$b;I)Z

    return-void
.end method
