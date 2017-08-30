.class public Landroid/support/constraint/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/a/a/c$a;
    }
.end annotation


# static fields
.field public static r:F


# instance fields
.field A:Z

.field B:F

.field C:F

.field private D:Landroid/support/constraint/a/a/a;

.field private E:I

.field private F:I

.field private G:F

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Ljava/lang/Object;

.field private V:I

.field private W:I

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field public a:I

.field public b:I

.field c:Landroid/support/constraint/a/a/b;

.field d:Landroid/support/constraint/a/a/b;

.field e:Landroid/support/constraint/a/a/b;

.field f:Landroid/support/constraint/a/a/b;

.field g:Landroid/support/constraint/a/a/b;

.field h:Landroid/support/constraint/a/a/b;

.field i:Landroid/support/constraint/a/a/b;

.field j:Landroid/support/constraint/a/a/b;

.field protected k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/support/constraint/a/a/c;

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field q:I

.field s:F

.field t:F

.field u:Landroid/support/constraint/a/a/c$a;

.field v:Landroid/support/constraint/a/a/c$a;

.field w:Z

.field x:I

.field y:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroid/support/constraint/a/a/c;->r:F

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/constraint/a/a/a;

    invoke-direct {v0, p0}, Landroid/support/constraint/a/a/a;-><init>(Landroid/support/constraint/a/a/c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->D:Landroid/support/constraint/a/a/a;

    iput v4, p0, Landroid/support/constraint/a/a/c;->a:I

    iput v4, p0, Landroid/support/constraint/a/a/c;->b:I

    new-instance v0, Landroid/support/constraint/a/a/b;

    sget-object v1, Landroid/support/constraint/a/a/b$c;->b:Landroid/support/constraint/a/a/b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/b;-><init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    new-instance v0, Landroid/support/constraint/a/a/b;

    sget-object v1, Landroid/support/constraint/a/a/b$c;->c:Landroid/support/constraint/a/a/b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/b;-><init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    new-instance v0, Landroid/support/constraint/a/a/b;

    sget-object v1, Landroid/support/constraint/a/a/b$c;->d:Landroid/support/constraint/a/a/b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/b;-><init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    new-instance v0, Landroid/support/constraint/a/a/b;

    sget-object v1, Landroid/support/constraint/a/a/b$c;->e:Landroid/support/constraint/a/a/b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/b;-><init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    new-instance v0, Landroid/support/constraint/a/a/b;

    sget-object v1, Landroid/support/constraint/a/a/b$c;->f:Landroid/support/constraint/a/a/b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/b;-><init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    new-instance v0, Landroid/support/constraint/a/a/b;

    sget-object v1, Landroid/support/constraint/a/a/b$c;->h:Landroid/support/constraint/a/a/b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/b;-><init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->h:Landroid/support/constraint/a/a/b;

    new-instance v0, Landroid/support/constraint/a/a/b;

    sget-object v1, Landroid/support/constraint/a/a/b$c;->i:Landroid/support/constraint/a/a/b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/b;-><init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->i:Landroid/support/constraint/a/a/b;

    new-instance v0, Landroid/support/constraint/a/a/b;

    sget-object v1, Landroid/support/constraint/a/a/b$c;->g:Landroid/support/constraint/a/a/b$c;

    invoke-direct {v0, p0, v1}, Landroid/support/constraint/a/a/b;-><init>(Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;)V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->j:Landroid/support/constraint/a/a/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    iput-object v5, p0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    iput v2, p0, Landroid/support/constraint/a/a/c;->E:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->F:I

    iput v3, p0, Landroid/support/constraint/a/a/c;->G:F

    iput v4, p0, Landroid/support/constraint/a/a/c;->H:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->I:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->J:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->K:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->L:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->m:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->n:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->M:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->N:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->O:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->P:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->o:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->p:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->q:I

    sget v0, Landroid/support/constraint/a/a/c;->r:F

    iput v0, p0, Landroid/support/constraint/a/a/c;->s:F

    sget v0, Landroid/support/constraint/a/a/c;->r:F

    iput v0, p0, Landroid/support/constraint/a/a/c;->t:F

    sget-object v0, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v0, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    iput v2, p0, Landroid/support/constraint/a/a/c;->V:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->W:I

    iput-object v5, p0, Landroid/support/constraint/a/a/c;->X:Ljava/lang/String;

    iput-object v5, p0, Landroid/support/constraint/a/a/c;->Y:Ljava/lang/String;

    iput v2, p0, Landroid/support/constraint/a/a/c;->x:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->y:I

    iput v3, p0, Landroid/support/constraint/a/a/c;->B:F

    iput v3, p0, Landroid/support/constraint/a/a/c;->C:F

    invoke-direct {p0}, Landroid/support/constraint/a/a/c;->A()V

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->h:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->i:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Landroid/support/constraint/a/e;ZZLandroid/support/constraint/a/a/b;Landroid/support/constraint/a/a/b;IIIIFZZ)V
    .locals 10

    invoke-virtual {p1, p4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    invoke-virtual {p1, p5}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v7

    invoke-virtual {p4}, Landroid/support/constraint/a/a/b;->f()Landroid/support/constraint/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    invoke-virtual {p5}, Landroid/support/constraint/a/a/b;->f()Landroid/support/constraint/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v6

    invoke-virtual {p4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    invoke-virtual {p5}, Landroid/support/constraint/a/a/b;->d()I

    move-result v8

    iget v1, p0, Landroid/support/constraint/a/a/c;->W:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    const/16 p8, 0x0

    :cond_0
    if-nez v3, :cond_4

    if-nez v6, :cond_4

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v2, v0}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    if-nez p11, :cond_1

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p9

    invoke-static {p1, v7, v2, v0, v1}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_3

    const/4 v1, 0x0

    move/from16 v0, p8

    invoke-static {p1, v7, v2, v0, v1}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v7, v0}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    if-nez v6, :cond_7

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    move/from16 v0, p9

    invoke-static {p1, v7, v2, v0, v1}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_5
    if-nez p11, :cond_1

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    move/from16 v0, p8

    invoke-virtual {v1, v7, v2, v0}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v7, v0}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_7
    if-nez v3, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    mul-int/lit8 v3, v8, -0x1

    invoke-virtual {v1, v7, v6, v3}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    if-eqz p2, :cond_8

    const/4 v1, 0x1

    move/from16 v0, p9

    invoke-static {p1, v7, v2, v0, v1}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_0

    :cond_8
    if-nez p11, :cond_1

    if-eqz p3, :cond_9

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    move/from16 v0, p8

    invoke-virtual {v1, v7, v2, v0}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v2, v0}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_a
    if-eqz p3, :cond_11

    if-eqz p2, :cond_b

    const/4 v1, 0x1

    move/from16 v0, p9

    invoke-static {p1, v7, v2, v0, v1}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    :goto_1
    invoke-virtual {p4}, Landroid/support/constraint/a/a/b;->e()Landroid/support/constraint/a/a/b$b;

    move-result-object v1

    invoke-virtual {p5}, Landroid/support/constraint/a/a/b;->e()Landroid/support/constraint/a/a/b$b;

    move-result-object v5

    if-eq v1, v5, :cond_d

    invoke-virtual {p4}, Landroid/support/constraint/a/a/b;->e()Landroid/support/constraint/a/a/b$b;

    move-result-object v1

    sget-object v5, Landroid/support/constraint/a/a/b$b;->b:Landroid/support/constraint/a/a/b$b;

    if-ne v1, v5, :cond_c

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/g;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v2

    mul-int/lit8 v3, v8, -0x1

    invoke-virtual {v2, v7, v6, v1, v3}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    move/from16 v0, p8

    invoke-virtual {v1, v7, v2, v0}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/g;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v5

    invoke-virtual {v5, v2, v3, v1, v4}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    invoke-virtual {p1, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    mul-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v7, v6, v2}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_d
    if-ne v3, v6, :cond_e

    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_e
    if-nez p12, :cond_1

    invoke-virtual {p4}, Landroid/support/constraint/a/a/b;->g()Landroid/support/constraint/a/a/b$a;

    move-result-object v1

    sget-object v5, Landroid/support/constraint/a/a/b$a;->b:Landroid/support/constraint/a/a/b$a;

    if-eq v1, v5, :cond_f

    const/4 v1, 0x1

    :goto_2
    invoke-static {p1, v2, v3, v4, v1}, Landroid/support/constraint/a/d;->b(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    invoke-virtual {p5}, Landroid/support/constraint/a/a/b;->g()Landroid/support/constraint/a/a/b$a;

    move-result-object v1

    sget-object v5, Landroid/support/constraint/a/a/b$a;->b:Landroid/support/constraint/a/a/b$a;

    if-eq v1, v5, :cond_10

    const/4 v1, 0x1

    :goto_3
    mul-int/lit8 v5, v8, -0x1

    invoke-static {p1, v7, v6, v5, v1}, Landroid/support/constraint/a/d;->c(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    const/4 v9, 0x0

    move-object v1, p1

    move/from16 v5, p10

    invoke-static/range {v1 .. v9}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_f
    const/4 v1, 0x0

    goto :goto_2

    :cond_10
    const/4 v1, 0x0

    goto :goto_3

    :cond_11
    if-eqz p11, :cond_12

    const/4 v1, 0x1

    invoke-static {p1, v2, v3, v4, v1}, Landroid/support/constraint/a/d;->b(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    mul-int/lit8 v1, v8, -0x1

    const/4 v5, 0x1

    invoke-static {p1, v7, v6, v1, v5}, Landroid/support/constraint/a/d;->c(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    const/4 v9, 0x1

    move-object v1, p1

    move/from16 v5, p10

    invoke-static/range {v1 .. v9}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0

    :cond_12
    if-nez p12, :cond_1

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    invoke-virtual {p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    mul-int/lit8 v2, v8, -0x1

    invoke-virtual {v1, v7, v6, v2}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;
    .locals 2

    sget-object v0, Landroid/support/constraint/a/a/c$1;->a:[I

    invoke-virtual {p1}, Landroid/support/constraint/a/a/b$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->h:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->i:Landroid/support/constraint/a/a/b;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->j:Landroid/support/constraint/a/a/b;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->h:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->i:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->j:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    iput-object v2, p0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    iput v1, p0, Landroid/support/constraint/a/a/c;->E:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->F:I

    iput v3, p0, Landroid/support/constraint/a/a/c;->G:F

    iput v4, p0, Landroid/support/constraint/a/a/c;->H:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->m:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->n:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->M:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->N:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->O:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->P:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->o:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->p:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->q:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->Q:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->R:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->S:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->T:I

    sget v0, Landroid/support/constraint/a/a/c;->r:F

    iput v0, p0, Landroid/support/constraint/a/a/c;->s:F

    sget v0, Landroid/support/constraint/a/a/c;->r:F

    iput v0, p0, Landroid/support/constraint/a/a/c;->t:F

    sget-object v0, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v0, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    iput-object v0, p0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    iput-object v2, p0, Landroid/support/constraint/a/a/c;->U:Ljava/lang/Object;

    iput v1, p0, Landroid/support/constraint/a/a/c;->V:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->W:I

    iput-object v2, p0, Landroid/support/constraint/a/a/c;->X:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/constraint/a/a/c;->Y:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/constraint/a/a/c;->w:Z

    iput v1, p0, Landroid/support/constraint/a/a/c;->x:I

    iput v1, p0, Landroid/support/constraint/a/a/c;->y:I

    iput-boolean v1, p0, Landroid/support/constraint/a/a/c;->z:Z

    iput-boolean v1, p0, Landroid/support/constraint/a/a/c;->A:Z

    iput v3, p0, Landroid/support/constraint/a/a/c;->B:F

    iput v3, p0, Landroid/support/constraint/a/a/c;->C:F

    iput v4, p0, Landroid/support/constraint/a/a/c;->a:I

    iput v4, p0, Landroid/support/constraint/a/a/c;->b:I

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->s:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->W:I

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->m:I

    iput p2, p0, Landroid/support/constraint/a/a/c;->n:I

    return-void
.end method

.method public a(IIII)V
    .locals 4

    sub-int v0, p3, p1

    sub-int v1, p4, p2

    iget-object v2, p0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v3, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->k()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->k()I

    move-result v0

    :cond_0
    iget-object v2, p0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v3, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->l()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->l()I

    move-result v1

    :cond_1
    iput p1, p0, Landroid/support/constraint/a/a/c;->m:I

    iput p2, p0, Landroid/support/constraint/a/a/c;->n:I

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/a/a/c;->c(II)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/b$c;Landroid/support/constraint/a/a/c;Landroid/support/constraint/a/a/b$c;II)V
    .locals 7

    invoke-virtual {p0, p1}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/b$c;)Landroid/support/constraint/a/a/b;

    move-result-object v1

    sget-object v4, Landroid/support/constraint/a/a/b$b;->b:Landroid/support/constraint/a/a/b$b;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v2, p4

    move v3, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b;IILandroid/support/constraint/a/a/b$b;IZ)Z

    return-void
.end method

.method public a(Landroid/support/constraint/a/a/c$a;)V
    .locals 2

    iput-object p1, p0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v1, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/c;->S:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/c;->d(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/support/constraint/a/a/c;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    return-void
.end method

.method public a(Landroid/support/constraint/a/c;)V
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->j:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->h:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/c;)V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->i:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0, p1}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/c;)V

    return-void
.end method

.method public a(Landroid/support/constraint/a/e;I)V
    .locals 26

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const v7, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget v7, v7, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v7, v0, :cond_3c

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v6

    move-object/from16 v25, v6

    :goto_0
    const v6, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget v6, v6, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v6, v0, :cond_3b

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v5

    move-object/from16 v24, v5

    :goto_1
    const v5, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget v5, v5, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v5, v0, :cond_3a

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v4

    move-object/from16 v23, v4

    :goto_2
    const v4, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget v4, v4, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v4, v0, :cond_39

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    move-object/from16 v22, v3

    :goto_3
    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget v3, v3, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_38

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    move-object v15, v2

    :goto_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    if-eq v3, v5, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    if-ne v3, v5, :cond_36

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    check-cast v2, Landroid/support/constraint/a/a/d;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c;I)V

    const/4 v2, 0x1

    move v3, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    if-eq v2, v5, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v2, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    if-ne v2, v5, :cond_35

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    check-cast v2, Landroid/support/constraint/a/a/d;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/a/c;I)V

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->y()Landroid/support/constraint/a/a/c$a;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v4, v5, :cond_c

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-eq v4, v5, :cond_18

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/g;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-eq v4, v5, :cond_19

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/g;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v5, v4, v0, v6, v7}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->z()Landroid/support/constraint/a/a/c$a;

    move-result-object v4

    sget-object v5, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v4, v5, :cond_1c

    if-nez v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-eq v4, v5, :cond_1a

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/g;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-eq v4, v5, :cond_1b

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/g;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v5, v4, v0, v6, v7}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    move/from16 v16, v2

    move v14, v3

    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/c;->E:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/c;->Q:I

    if-ge v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/c;->Q:I

    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/c;->F:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/c;->R:I

    if-ge v3, v4, :cond_11

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/c;->R:I

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v5, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-eq v4, v5, :cond_1d

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v6, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-eq v5, v6, :cond_1e

    const/4 v5, 0x1

    :goto_c
    if-nez v4, :cond_34

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    if-eqz v6, :cond_34

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    if-eqz v6, :cond_34

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v6, v6, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v6, v6, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-nez v6, :cond_34

    :cond_12
    const/4 v4, 0x1

    move v8, v4

    :goto_d
    if-nez v5, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-nez v4, :cond_33

    :cond_13
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/constraint/a/a/c;->q:I

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-nez v4, :cond_33

    :cond_14
    const/4 v4, 0x1

    :goto_e
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/constraint/a/a/c;->H:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/c;->G:F

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/c;->G:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_32

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/c;->W:I

    const/16 v10, 0x8

    if-eq v9, v10, :cond_32

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v10, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v9, v10, :cond_20

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v10, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v9, v10, :cond_20

    const/4 v7, 0x1

    if-eqz v8, :cond_1f

    if-nez v4, :cond_1f

    const/4 v6, 0x0

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v4

    move/from16 v21, v3

    move v10, v2

    move v5, v8

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v3, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v2, v3, :cond_22

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/support/constraint/a/a/d;

    if-eqz v2, :cond_22

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/c;->a:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_16

    const v2, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget v2, v2, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget v2, v2, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/constraint/a/a/c;->m:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/c;->m:I

    add-int v9, v2, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/constraint/a/a/c;->Q:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/constraint/a/a/c;->s:F

    if-eqz v19, :cond_23

    if-nez v18, :cond_23

    const/4 v13, 0x1

    :goto_11
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v14}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/e;ZZLandroid/support/constraint/a/a/b;Landroid/support/constraint/a/a/b;IIIIFZZ)V

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/c;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    :cond_17
    :goto_12
    return-void

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-ne v4, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    sget-object v5, Landroid/support/constraint/a/a/b$a;->b:Landroid/support/constraint/a/a/b$a;

    invoke-virtual {v4, v5}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b$a;)V

    goto/16 :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    sget-object v5, Landroid/support/constraint/a/a/b$a;->b:Landroid/support/constraint/a/a/b$a;

    invoke-virtual {v4, v5}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b$a;)V

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    sget-object v5, Landroid/support/constraint/a/a/b$a;->b:Landroid/support/constraint/a/a/b$a;

    invoke-virtual {v4, v5}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b$a;)V

    goto/16 :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    if-ne v4, v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    sget-object v5, Landroid/support/constraint/a/a/b$a;->b:Landroid/support/constraint/a/a/b$a;

    invoke-virtual {v4, v5}, Landroid/support/constraint/a/a/b;->a(Landroid/support/constraint/a/a/b$a;)V

    :cond_1c
    move/from16 v16, v2

    move v14, v3

    goto/16 :goto_a

    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_1f
    if-nez v8, :cond_32

    if-eqz v4, :cond_32

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/constraint/a/a/c;->H:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_32

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v5, v9, v5

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v4

    move/from16 v21, v3

    move v10, v2

    move v5, v8

    goto/16 :goto_f

    :cond_20
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v10, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v9, v10, :cond_21

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/constraint/a/a/c;->F:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v10, v6

    const/4 v6, 0x1

    move/from16 v17, v5

    move/from16 v18, v2

    move/from16 v19, v7

    move/from16 v20, v4

    move/from16 v21, v3

    move v5, v6

    goto/16 :goto_f

    :cond_21
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v10, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v9, v10, :cond_32

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/c;->H:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_31

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v5

    :goto_13
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/c;->E:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v6, v5

    const/4 v5, 0x1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v7

    move/from16 v20, v5

    move/from16 v21, v6

    move v10, v2

    move v5, v8

    goto/16 :goto_f

    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_10

    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_11

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v3, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v2, v3, :cond_2a

    move-object/from16 v0, p0

    instance-of v2, v0, Landroid/support/constraint/a/a/d;

    if-eqz v2, :cond_2a

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/c;->q:I

    if-lez v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    const v2, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget v2, v2, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget v2, v2, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_26

    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/support/constraint/a/a/c;->t()I

    move-result v2

    sub-int v2, v21, v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1, v15, v2, v3}, Landroid/support/constraint/a/d;->a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v2, :cond_30

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/constraint/a/a/c;->q:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    :goto_15
    const v2, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget v2, v2, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_28

    iget v2, v7, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/constraint/a/a/c;->n:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/c;->n:I

    add-int v9, v2, v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/constraint/a/a/c;->R:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/constraint/a/a/c;->t:F

    if-eqz v19, :cond_2b

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2b

    const/4 v13, 0x1

    :goto_16
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, v20

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/e;ZZLandroid/support/constraint/a/a/b;Landroid/support/constraint/a/a/b;IIIIFZZ)V

    :cond_28
    :goto_17
    if-eqz v19, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v2

    const v3, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget v3, v3, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget v3, v3, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v3, v0, :cond_17

    :cond_29
    if-nez v18, :cond_2f

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;F)Landroid/support/constraint/a/b;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_12

    :cond_2a
    const/4 v4, 0x0

    goto/16 :goto_14

    :cond_2b
    const/4 v13, 0x0

    goto :goto_16

    :cond_2c
    const v2, 0x7fffffff

    move/from16 v0, p2

    if-eq v0, v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget v2, v2, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget v2, v2, Landroid/support/constraint/a/a/b;->g:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_28

    :cond_2d
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    move-object/from16 v0, p0

    iget v8, v0, Landroid/support/constraint/a/a/c;->n:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/constraint/a/a/c;->n:I

    add-int v9, v2, v21

    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/constraint/a/a/c;->R:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/support/constraint/a/a/c;->t:F

    if-eqz v19, :cond_2e

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2e

    const/4 v13, 0x1

    :goto_18
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, v20

    move/from16 v10, v21

    move/from16 v14, v16

    invoke-direct/range {v2 .. v14}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/e;ZZLandroid/support/constraint/a/a/b;Landroid/support/constraint/a/a/b;IIIIFZZ)V

    goto/16 :goto_17

    :cond_2e
    const/4 v13, 0x0

    goto :goto_18

    :cond_2f
    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;F)Landroid/support/constraint/a/b;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    goto/16 :goto_12

    :cond_30
    move/from16 v10, v21

    goto/16 :goto_15

    :cond_31
    move v3, v5

    goto/16 :goto_13

    :cond_32
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v4

    move/from16 v21, v3

    move v10, v2

    move v5, v8

    goto/16 :goto_f

    :cond_33
    move v4, v5

    goto/16 :goto_e

    :cond_34
    move v8, v4

    goto/16 :goto_d

    :cond_35
    move v2, v4

    goto/16 :goto_6

    :cond_36
    move v3, v2

    goto/16 :goto_5

    :cond_37
    move/from16 v16, v4

    move v14, v2

    goto/16 :goto_a

    :cond_38
    move-object v15, v2

    goto/16 :goto_4

    :cond_39
    move-object/from16 v22, v3

    goto/16 :goto_3

    :cond_3a
    move-object/from16 v23, v4

    goto/16 :goto_2

    :cond_3b
    move-object/from16 v24, v5

    goto/16 :goto_1

    :cond_3c
    move-object/from16 v25, v6

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/support/constraint/a/a/c;->U:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iput v3, p0, Landroid/support/constraint/a/a/c;->G:F

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x2c

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_3

    add-int/lit8 v6, v4, -0x1

    if-ge v5, v6, :cond_3

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    add-int/lit8 v2, v5, 0x1

    move v8, v2

    move v2, v0

    move v0, v8

    :cond_3
    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_6

    add-int/lit8 v4, v4, -0x1

    if-ge v5, v4, :cond_6

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpl-float v5, v0, v3

    if-lez v5, :cond_7

    cmpl-float v5, v4, v3

    if-lez v5, :cond_7

    if-ne v2, v1, :cond_5

    div-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_1

    iput v0, p0, Landroid/support/constraint/a/a/c;->G:F

    iput v2, p0, Landroid/support/constraint/a/a/c;->H:I

    goto :goto_0

    :cond_4
    const-string v0, "H"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_1

    :cond_5
    div-float/2addr v0, v4

    :try_start_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public b()Landroid/support/constraint/a/a/c;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->l:Landroid/support/constraint/a/a/c;

    return-object v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->t:F

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->m:I

    return-void
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->o:I

    iput p2, p0, Landroid/support/constraint/a/a/c;->p:I

    return-void
.end method

.method public b(Landroid/support/constraint/a/a/c$a;)V
    .locals 2

    iput-object p1, p0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v1, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/c;->T:I

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/c;->e(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/constraint/a/e;I)V
    .locals 4

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/constraint/a/a/c;->a(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    iget v0, p0, Landroid/support/constraint/a/a/c;->I:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->J:I

    iget v2, p0, Landroid/support/constraint/a/a/c;->K:I

    iget v3, p0, Landroid/support/constraint/a/a/c;->L:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/constraint/a/a/c;->a(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget v0, v0, Landroid/support/constraint/a/a/b;->g:I

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/c;->I:I

    :cond_3
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget v0, v0, Landroid/support/constraint/a/a/b;->g:I

    if-ne v0, p2, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/c;->J:I

    :cond_4
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget v0, v0, Landroid/support/constraint/a/a/b;->g:I

    if-ne v0, p2, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/c;->K:I

    :cond_5
    iget-object v0, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget v0, v0, Landroid/support/constraint/a/a/b;->g:I

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v0}, Landroid/support/constraint/a/e;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Landroid/support/constraint/a/a/c;->L:I

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/c;->W:I

    return v0
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->B:F

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->n:I

    return-void
.end method

.method public c(II)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/c;->E:I

    iget v0, p0, Landroid/support/constraint/a/a/c;->E:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->Q:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/c;->Q:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->E:I

    :cond_0
    iput p2, p0, Landroid/support/constraint/a/a/c;->F:I

    iget v0, p0, Landroid/support/constraint/a/a/c;->F:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->R:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/support/constraint/a/a/c;->R:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->F:I

    :cond_1
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->X:Ljava/lang/String;

    return-object v0
.end method

.method public d(F)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->C:F

    return-void
.end method

.method public d(I)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/c;->E:I

    iget v0, p0, Landroid/support/constraint/a/a/c;->E:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->Q:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/c;->Q:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->E:I

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/c;->m:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/a/a/c;->E:I

    iget v0, p0, Landroid/support/constraint/a/a/c;->E:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->Q:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/c;->Q:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->E:I

    :cond_0
    return-void
.end method

.method e()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/c;->M:I

    return v0
.end method

.method public e(I)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/c;->F:I

    iget v0, p0, Landroid/support/constraint/a/a/c;->F:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->R:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/c;->R:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->F:I

    :cond_0
    return-void
.end method

.method public e(II)V
    .locals 2

    iput p1, p0, Landroid/support/constraint/a/a/c;->n:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/support/constraint/a/a/c;->F:I

    iget v0, p0, Landroid/support/constraint/a/a/c;->F:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->R:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/constraint/a/a/c;->R:I

    iput v0, p0, Landroid/support/constraint/a/a/c;->F:I

    :cond_0
    return-void
.end method

.method f()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/c;->N:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->Q:I

    return-void
.end method

.method public g()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/c;->M:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->O:I

    add-int/2addr v0, v1

    return v0
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->R:I

    return-void
.end method

.method public h()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/c;->N:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->P:I

    add-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->q:I

    return-void
.end method

.method public i()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/c;->m:I

    return v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->x:I

    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/c;->n:I

    return v0
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Landroid/support/constraint/a/a/c;->y:I

    return-void
.end method

.method public k()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/c;->W:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/c;->E:I

    goto :goto_0
.end method

.method public l()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/c;->W:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/constraint/a/a/c;->F:I

    goto :goto_0
.end method

.method public m()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/c;->M:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->o:I

    add-int/2addr v0, v1

    return v0
.end method

.method public n()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/c;->N:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->p:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected o()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/c;->m:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->o:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected p()I
    .locals 2

    iget v0, p0, Landroid/support/constraint/a/a/c;->n:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->p:I

    add-int/2addr v0, v1

    return v0
.end method

.method public q()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->i()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/c;->E:I

    add-int/2addr v0, v1

    return v0
.end method

.method public r()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->j()I

    move-result v0

    iget v1, p0, Landroid/support/constraint/a/a/c;->F:I

    add-int/2addr v0, v1

    return v0
.end method

.method public s()Z
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/c;->q:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Landroid/support/constraint/a/a/c;->q:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/a/a/c;->Y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->X:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/constraint/a/a/c;->X:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/c;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/c;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/c;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/c;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " wrap: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/c;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/constraint/a/a/c;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public u()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->U:Ljava/lang/Object;

    return-object v0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/constraint/a/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public w()V
    .locals 5

    iget v3, p0, Landroid/support/constraint/a/a/c;->m:I

    iget v2, p0, Landroid/support/constraint/a/a/c;->n:I

    iget v0, p0, Landroid/support/constraint/a/a/c;->m:I

    iget v1, p0, Landroid/support/constraint/a/a/c;->E:I

    add-int/2addr v1, v0

    iget v0, p0, Landroid/support/constraint/a/a/c;->n:I

    iget v4, p0, Landroid/support/constraint/a/a/c;->F:I

    add-int/2addr v0, v4

    invoke-static {}, Landroid/support/constraint/a/a/a;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/support/constraint/a/a/c;->D:Landroid/support/constraint/a/a/a;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/support/constraint/a/a/a;->a(IIII)V

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->D:Landroid/support/constraint/a/a/a;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/a;->e()I

    move-result v3

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->D:Landroid/support/constraint/a/a/a;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/a;->f()I

    move-result v2

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->D:Landroid/support/constraint/a/a/a;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/a;->g()I

    move-result v1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->D:Landroid/support/constraint/a/a/a;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/a;->h()I

    move-result v0

    :cond_0
    iput v3, p0, Landroid/support/constraint/a/a/c;->M:I

    iput v2, p0, Landroid/support/constraint/a/a/c;->N:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/support/constraint/a/a/c;->O:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/support/constraint/a/a/c;->P:I

    return-void
.end method

.method public x()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->b()Landroid/support/constraint/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, v0, Landroid/support/constraint/a/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/constraint/a/a/c;->b()Landroid/support/constraint/a/a/c;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/d;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/d;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->i()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public y()Landroid/support/constraint/a/a/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    return-object v0
.end method

.method public z()Landroid/support/constraint/a/a/c$a;
    .locals 1

    iget-object v0, p0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    return-object v0
.end method
