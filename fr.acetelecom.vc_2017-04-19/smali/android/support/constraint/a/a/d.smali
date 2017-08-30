.class public Landroid/support/constraint/a/a/d;
.super Landroid/support/constraint/a/a/i;


# static fields
.field static F:Z


# instance fields
.field protected D:Landroid/support/constraint/a/e;

.field protected E:Landroid/support/constraint/a/e;

.field G:I

.field H:I

.field I:I

.field J:I

.field private L:Landroid/support/constraint/a/a/h;

.field private M:I

.field private N:I

.field private O:[Landroid/support/constraint/a/a/c;

.field private P:[Landroid/support/constraint/a/a/c;

.field private Q:[Landroid/support/constraint/a/a/c;

.field private R:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/constraint/a/a/d;->F:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Landroid/support/constraint/a/a/i;-><init>()V

    new-instance v0, Landroid/support/constraint/a/e;

    invoke-direct {v0}, Landroid/support/constraint/a/e;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->E:Landroid/support/constraint/a/e;

    iput v2, p0, Landroid/support/constraint/a/a/d;->M:I

    iput v2, p0, Landroid/support/constraint/a/a/d;->N:I

    new-array v0, v1, [Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    new-array v0, v1, [Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    new-array v0, v1, [Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/constraint/a/a/d;->R:Z

    return-void
.end method

.method private D()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/constraint/a/a/d;->M:I

    iput v0, p0, Landroid/support/constraint/a/a/d;->N:I

    return-void
.end method

.method private a(Landroid/support/constraint/a/e;)Z
    .locals 14

    const/4 v13, -0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    iget-boolean v0, p0, Landroid/support/constraint/a/a/d;->R:Z

    if-eqz v0, :cond_9

    move v1, v5

    :goto_0
    if-ge v1, v10, :cond_13

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    iput v13, v0, Landroid/support/constraint/a/a/c;->a:I

    iput v13, v0, Landroid/support/constraint/a/a/c;->b:I

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v4, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-eq v2, v4, :cond_0

    iget-object v2, v0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v4, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v2, v4, :cond_1

    :cond_0
    iput v3, v0, Landroid/support/constraint/a/a/c;->a:I

    iput v3, v0, Landroid/support/constraint/a/a/c;->b:I

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-nez v1, :cond_8

    if-nez v2, :cond_8

    move v0, v3

    :goto_1
    move v8, v2

    move v9, v1

    move v4, v0

    move v0, v7

    :goto_2
    if-nez v4, :cond_9

    add-int/lit8 v7, v0, 0x1

    move v6, v5

    move v2, v5

    move v1, v5

    :goto_3
    if-ge v6, v10, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    iget v11, v0, Landroid/support/constraint/a/a/c;->a:I

    if-ne v11, v13, :cond_3

    iget-object v11, p0, Landroid/support/constraint/a/a/d;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v12, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v11, v12, :cond_6

    iput v3, v0, Landroid/support/constraint/a/a/c;->a:I

    :cond_3
    :goto_4
    iget v11, v0, Landroid/support/constraint/a/a/c;->b:I

    if-ne v11, v13, :cond_4

    iget-object v11, p0, Landroid/support/constraint/a/a/d;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v12, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v11, v12, :cond_7

    iput v3, v0, Landroid/support/constraint/a/a/c;->b:I

    :cond_4
    :goto_5
    iget v11, v0, Landroid/support/constraint/a/a/c;->b:I

    if-ne v11, v13, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget v0, v0, Landroid/support/constraint/a/a/c;->a:I

    if-ne v0, v13, :cond_12

    add-int/lit8 v0, v2, 0x1

    :goto_6
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v0

    goto :goto_3

    :cond_6
    invoke-static {p0, p1, v0}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/c;)V

    goto :goto_4

    :cond_7
    invoke-static {p0, p1, v0}, Landroid/support/constraint/a/a/f;->b(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/c;)V

    goto :goto_5

    :cond_8
    if-ne v9, v1, :cond_11

    if-ne v8, v2, :cond_11

    move v0, v3

    goto :goto_1

    :cond_9
    move v4, v5

    move v2, v5

    move v1, v5

    :goto_7
    if-ge v4, v10, :cond_e

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    iget-boolean v6, p0, Landroid/support/constraint/a/a/d;->R:Z

    if-nez v6, :cond_a

    iput v3, v0, Landroid/support/constraint/a/a/c;->a:I

    iput v3, v0, Landroid/support/constraint/a/a/c;->b:I

    move v0, v2

    :goto_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_7

    :cond_a
    iget v6, v0, Landroid/support/constraint/a/a/c;->a:I

    if-eq v6, v3, :cond_b

    iget v6, v0, Landroid/support/constraint/a/a/c;->a:I

    if-ne v6, v13, :cond_c

    :cond_b
    add-int/lit8 v1, v1, 0x1

    :cond_c
    iget v6, v0, Landroid/support/constraint/a/a/c;->b:I

    if-eq v6, v3, :cond_d

    iget v0, v0, Landroid/support/constraint/a/a/c;->b:I

    if-ne v0, v13, :cond_10

    :cond_d
    add-int/lit8 v0, v2, 0x1

    goto :goto_8

    :cond_e
    iget-boolean v0, p0, Landroid/support/constraint/a/a/d;->R:Z

    if-eqz v0, :cond_f

    if-nez v1, :cond_f

    if-nez v2, :cond_f

    :goto_9
    return v3

    :cond_f
    move v3, v5

    goto :goto_9

    :cond_10
    move v0, v2

    goto :goto_8

    :cond_11
    move v0, v4

    goto/16 :goto_1

    :cond_12
    move v0, v2

    goto :goto_6

    :cond_13
    move v0, v5

    move v8, v5

    move v9, v5

    move v4, v5

    goto/16 :goto_2
.end method

.method private b(Landroid/support/constraint/a/a/c;I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_4

    iget-object v1, p1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v1, :cond_e

    iget-object v1, p1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v1, p0, :cond_e

    move v1, v2

    move v3, v2

    move-object v4, p1

    :goto_0
    iget-object v0, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_d

    iget-object v0, v4, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v5, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v0, v5, :cond_c

    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    iget-object v5, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    :cond_0
    iget-object v5, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v0, v3, 0x1

    aput-object v4, v5, v3

    :goto_1
    iget-object v3, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-nez v3, :cond_3

    :cond_1
    :goto_2
    iget-object v3, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_2

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v3, p0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p1, Landroid/support/constraint/a/a/c;->z:Z

    :goto_3
    return v0

    :cond_3
    iget-object v3, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v3, v4, :cond_1

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v3, v4, :cond_1

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object v4, v3

    move v3, v0

    goto :goto_0

    :cond_4
    iget-object v1, p1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v1, :cond_b

    iget-object v1, p1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v1, p0, :cond_b

    move v1, v2

    move v3, v2

    move-object v4, p1

    :goto_4
    iget-object v0, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_a

    iget-object v0, v4, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v5, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v0, v5, :cond_9

    add-int/lit8 v0, v3, 0x1

    iget-object v5, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    array-length v5, v5

    if-lt v0, v5, :cond_5

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    iget-object v5, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    :cond_5
    iget-object v5, p0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v0, v3, 0x1

    aput-object v4, v5, v3

    :goto_5
    iget-object v3, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-nez v3, :cond_8

    :cond_6
    :goto_6
    iget-object v3, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_7

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v3, p0, :cond_7

    move v1, v2

    :cond_7
    iput-boolean v1, p1, Landroid/support/constraint/a/a/c;->A:Z

    goto :goto_3

    :cond_8
    iget-object v3, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v3, v4, :cond_6

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v3, v4, :cond_6

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object v4, v3

    move v3, v0

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    move v0, v3

    goto :goto_6

    :cond_b
    move v1, v0

    move v3, v2

    move-object v4, p1

    goto :goto_4

    :cond_c
    move v0, v3

    goto/16 :goto_1

    :cond_d
    move v0, v3

    goto/16 :goto_2

    :cond_e
    move v1, v0

    move v3, v2

    move-object v4, p1

    goto/16 :goto_0
.end method

.method private b(Landroid/support/constraint/a/e;)V
    .locals 19

    const/4 v3, 0x0

    move v15, v3

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/d;->M:I

    if-ge v15, v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    aget-object v13, v3, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    aget-object v3, v3, v15

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/support/constraint/a/a/d;->b(Landroid/support/constraint/a/a/c;I)I

    move-result v17

    iget v3, v13, Landroid/support/constraint/a/a/c;->x:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v12, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v4, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    iget-boolean v4, v13, Landroid/support/constraint/a/a/c;->z:Z

    if-eqz v4, :cond_3

    if-nez v12, :cond_3

    if-nez v3, :cond_3

    iget v3, v13, Landroid/support/constraint/a/a/c;->x:I

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v2, v13}, Landroid/support/constraint/a/a/f;->a(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/e;ILandroid/support/constraint/a/a/c;)V

    :cond_0
    :goto_3
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v12, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    if-eqz v17, :cond_4

    if-eqz v12, :cond_14

    :cond_4
    const/4 v3, 0x0

    move-object v14, v13

    :goto_4
    if-eqz v3, :cond_5

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_11

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v3, :cond_11

    :cond_5
    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v6

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v10

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v5, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_b

    iget-object v5, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_5
    iget-object v7, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v9, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v7, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v7, :cond_c

    iget-object v7, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_6
    if-eqz v3, :cond_26

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    add-int/2addr v3, v6

    :goto_7
    if-eqz v5, :cond_8

    if-ne v14, v13, :cond_6

    iget v7, v14, Landroid/support/constraint/a/a/c;->x:I

    const/4 v11, 0x1

    if-eq v7, v11, :cond_7

    :cond_6
    if-eqz v12, :cond_d

    if-eq v14, v13, :cond_d

    :cond_7
    const/4 v7, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v3, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :cond_8
    :goto_8
    if-eqz v8, :cond_9

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v11, v3, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v11, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_e

    iget-object v3, v11, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object v7, v3

    :goto_9
    const/4 v3, 0x1

    if-ne v7, v14, :cond_25

    invoke-virtual {v11}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    add-int v7, v10, v3

    const/4 v3, 0x0

    :goto_a
    if-nez v12, :cond_9

    if-eqz v3, :cond_f

    iget v3, v13, Landroid/support/constraint/a/a/c;->x:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_f

    neg-int v3, v7

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8, v3, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :cond_9
    :goto_b
    iget-object v3, v14, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v4, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v3, v4, :cond_a

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :cond_a
    if-eqz v8, :cond_10

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v18, v14

    move-object v14, v3

    move-object/from16 v3, v18

    goto/16 :goto_4

    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    :cond_d
    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v3, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_9

    :cond_f
    neg-int v3, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8, v3, v7}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    if-eqz v5, :cond_9

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto :goto_b

    :cond_10
    move-object v3, v14

    :cond_11
    if-eqz v12, :cond_0

    iget-object v4, v13, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v6

    iget-object v4, v3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v10

    iget-object v4, v13, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v5, v13, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_12

    iget-object v5, v13, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_c
    iget-object v7, v3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v9, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v7, v3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v7, :cond_13

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_d
    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    iget v7, v13, Landroid/support/constraint/a/a/c;->s:F

    const/4 v11, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto/16 :goto_3

    :cond_12
    const/4 v5, 0x0

    goto :goto_c

    :cond_13
    const/4 v8, 0x0

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v3

    move-object v6, v13

    :goto_e
    if-eqz v4, :cond_15

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_1b

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v3, v4, :cond_1b

    :cond_15
    iget-object v3, v6, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v7, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-eq v3, v7, :cond_1a

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    if-eqz v4, :cond_16

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_16
    const/4 v4, 0x2

    iget-object v7, v6, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v8, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v7, v8, :cond_17

    const/4 v4, 0x1

    :cond_17
    iget-object v7, v6, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v8, v6, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v8, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v8, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_18

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v6, :cond_18

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_18
    const/4 v4, 0x2

    iget-object v7, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v8, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v7, v8, :cond_19

    const/4 v4, 0x1

    :cond_19
    iget-object v7, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v8, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v8, v8, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v8, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    neg-int v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :goto_f
    iget-object v3, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object v4, v6

    move-object v6, v3

    goto/16 :goto_e

    :cond_1a
    iget v3, v6, Landroid/support/constraint/a/a/c;->B:F

    add-float/2addr v5, v3

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto :goto_f

    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_1c

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/b;->d()I

    move-result v5

    add-int/2addr v3, v5

    :cond_1c
    iget-object v5, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v6, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v6, v6, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v6, v6, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v3, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_1d

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/b;->d()I

    move-result v5

    add-int/2addr v3, v5

    :cond_1d
    iget-object v5, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    neg-int v3, v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v3, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto/16 :goto_3

    :cond_1e
    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_10
    add-int/lit8 v3, v17, -0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    aget-object v10, v3, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v14, v3, v4

    iget-object v3, v10, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v7, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v3, v10, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v9, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v11, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v13, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v3, v10, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_1f

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_1f

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v10, :cond_1f

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_1f
    iget-object v4, v10, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4, v3, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v10, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_20

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_20

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v10, :cond_20

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_20
    iget-object v4, v10, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    neg-int v3, v3

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4, v3, v6}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    add-int/lit8 v3, v16, 0x1

    add-int/lit8 v4, v17, -0x1

    if-ne v3, v4, :cond_23

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_21

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_21

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v14, :cond_21

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_21
    iget-object v4, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v4, v3, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_22

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_22

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v14, :cond_22

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_22
    iget-object v4, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    neg-int v3, v3

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4, v3, v6}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v3

    iget v4, v10, Landroid/support/constraint/a/a/c;->B:F

    iget v6, v14, Landroid/support/constraint/a/a/c;->B:F

    iget-object v8, v10, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v8}, Landroid/support/constraint/a/a/b;->d()I

    move-result v8

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v10}, Landroid/support/constraint/a/a/b;->d()I

    move-result v10

    iget-object v12, v14, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v12}, Landroid/support/constraint/a/a/b;->d()I

    move-result v12

    iget-object v14, v14, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v14}, Landroid/support/constraint/a/a/b;->d()I

    move-result v14

    invoke-virtual/range {v3 .. v14}, Landroid/support/constraint/a/b;->a(FFFLandroid/support/constraint/a/g;ILandroid/support/constraint/a/g;ILandroid/support/constraint/a/g;ILandroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto/16 :goto_10

    :cond_24
    return-void

    :cond_25
    move v7, v10

    goto/16 :goto_a

    :cond_26
    move v3, v6

    goto/16 :goto_7
.end method

.method private c(Landroid/support/constraint/a/e;)V
    .locals 19

    const/4 v3, 0x0

    move v15, v3

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/constraint/a/a/d;->N:I

    if-ge v15, v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    aget-object v13, v3, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    aget-object v3, v3, v15

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Landroid/support/constraint/a/a/d;->b(Landroid/support/constraint/a/a/c;I)I

    move-result v17

    iget v3, v13, Landroid/support/constraint/a/a/c;->y:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v12, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v4, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    iget-boolean v4, v13, Landroid/support/constraint/a/a/c;->A:Z

    if-eqz v4, :cond_3

    if-nez v12, :cond_3

    if-nez v3, :cond_3

    iget v3, v13, Landroid/support/constraint/a/a/c;->y:I

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v2, v13}, Landroid/support/constraint/a/a/f;->b(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/e;ILandroid/support/constraint/a/a/c;)V

    :cond_0
    :goto_3
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v12, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    if-eqz v17, :cond_4

    if-eqz v12, :cond_14

    :cond_4
    const/4 v3, 0x0

    move-object v14, v13

    :goto_4
    if-eqz v3, :cond_5

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_11

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v3, :cond_11

    :cond_5
    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v6

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v10

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v5, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_b

    iget-object v5, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_5
    iget-object v7, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v9, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v7, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v7, :cond_c

    iget-object v7, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_6
    if-eqz v3, :cond_26

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    add-int/2addr v3, v6

    :goto_7
    if-eqz v5, :cond_8

    if-ne v14, v13, :cond_6

    iget v7, v14, Landroid/support/constraint/a/a/c;->y:I

    const/4 v11, 0x1

    if-eq v7, v11, :cond_7

    :cond_6
    if-eqz v12, :cond_d

    if-eq v14, v13, :cond_d

    :cond_7
    const/4 v7, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v3, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :cond_8
    :goto_8
    if-eqz v8, :cond_9

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v11, v3, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, v11, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_e

    iget-object v3, v11, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object v7, v3

    :goto_9
    const/4 v3, 0x1

    if-ne v7, v14, :cond_25

    invoke-virtual {v11}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    add-int v7, v10, v3

    const/4 v3, 0x0

    :goto_a
    if-nez v12, :cond_9

    if-eqz v3, :cond_f

    iget v3, v13, Landroid/support/constraint/a/a/c;->y:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_f

    neg-int v3, v7

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8, v3, v4}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :cond_9
    :goto_b
    iget-object v3, v14, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v4, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v3, v4, :cond_a

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :cond_a
    if-eqz v8, :cond_10

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object/from16 v18, v14

    move-object v14, v3

    move-object/from16 v3, v18

    goto/16 :goto_4

    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    :cond_d
    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v3, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_9

    :cond_f
    neg-int v3, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8, v3, v7}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    if-eqz v5, :cond_9

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v11, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto :goto_b

    :cond_10
    move-object v3, v14

    :cond_11
    if-eqz v12, :cond_0

    iget-object v4, v13, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v6

    iget-object v4, v3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v10

    iget-object v4, v13, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v5, v13, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_12

    iget-object v5, v13, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_c
    iget-object v7, v3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v9, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v7, v3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v7, :cond_13

    iget-object v3, v3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    :goto_d
    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    iget v7, v13, Landroid/support/constraint/a/a/c;->t:F

    const/4 v11, 0x2

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto/16 :goto_3

    :cond_12
    const/4 v5, 0x0

    goto :goto_c

    :cond_13
    const/4 v8, 0x0

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, v3

    move-object v6, v13

    :goto_e
    if-eqz v4, :cond_15

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_1b

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v3, v4, :cond_1b

    :cond_15
    iget-object v3, v6, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v7, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-eq v3, v7, :cond_1a

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    if-eqz v4, :cond_16

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_16
    const/4 v4, 0x2

    iget-object v7, v6, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v8, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v7, v8, :cond_17

    const/4 v4, 0x1

    :cond_17
    iget-object v7, v6, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v8, v6, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v8, v8, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v8, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_18

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v6, :cond_18

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_18
    const/4 v4, 0x2

    iget-object v7, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v8, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v7, v8, :cond_19

    const/4 v4, 0x1

    :cond_19
    iget-object v7, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v7, v7, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v8, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v8, v8, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v8, v8, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    neg-int v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :goto_f
    iget-object v3, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    move-object v4, v6

    move-object v6, v3

    goto/16 :goto_e

    :cond_1a
    iget v3, v6, Landroid/support/constraint/a/a/c;->C:F

    add-float/2addr v5, v3

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v4, v6, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto :goto_f

    :cond_1b
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    const/4 v4, 0x0

    aget-object v4, v3, v4

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_1c

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/b;->d()I

    move-result v5

    add-int/2addr v3, v5

    :cond_1c
    iget-object v5, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v6, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v6, v6, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v6, v6, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v3, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_1d

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v5}, Landroid/support/constraint/a/a/b;->d()I

    move-result v5

    add-int/2addr v3, v5

    :cond_1d
    iget-object v5, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    neg-int v3, v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v3, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    goto/16 :goto_3

    :cond_1e
    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_10
    add-int/lit8 v3, v17, -0x1

    move/from16 v0, v16

    if-ge v0, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    aget-object v10, v3, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/constraint/a/a/d;->O:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v4, v16, 0x1

    aget-object v14, v3, v4

    iget-object v3, v10, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v7, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v3, v10, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v9, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v11, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v13, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v3, v10, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_1f

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_1f

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v10, :cond_1f

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_1f
    iget-object v4, v10, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4, v3, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v10, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_20

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_20

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v10, :cond_20

    iget-object v4, v10, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_20
    iget-object v4, v10, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    neg-int v3, v3

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4, v3, v6}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    add-int/lit8 v3, v16, 0x1

    add-int/lit8 v4, v17, -0x1

    if-ne v3, v4, :cond_23

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_21

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_21

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v14, :cond_21

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_21
    iget-object v4, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v4, v3, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    iget-object v3, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v3}, Landroid/support/constraint/a/a/b;->d()I

    move-result v3

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_22

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_22

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, v14, :cond_22

    iget-object v4, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_22
    iget-object v4, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    neg-int v3, v3

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v4, v3, v6}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;II)V

    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v3

    iget v4, v10, Landroid/support/constraint/a/a/c;->C:F

    iget v6, v14, Landroid/support/constraint/a/a/c;->C:F

    iget-object v8, v10, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v8}, Landroid/support/constraint/a/a/b;->d()I

    move-result v8

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v10}, Landroid/support/constraint/a/a/b;->d()I

    move-result v10

    iget-object v12, v14, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v12}, Landroid/support/constraint/a/a/b;->d()I

    move-result v12

    iget-object v14, v14, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v14}, Landroid/support/constraint/a/a/b;->d()I

    move-result v14

    invoke-virtual/range {v3 .. v14}, Landroid/support/constraint/a/b;->a(FFFLandroid/support/constraint/a/g;ILandroid/support/constraint/a/g;ILandroid/support/constraint/a/g;ILandroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/b;)V

    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto/16 :goto_10

    :cond_24
    return-void

    :cond_25
    move v7, v10

    goto/16 :goto_a

    :cond_26
    move v3, v6

    goto/16 :goto_7
.end method

.method private d(Landroid/support/constraint/a/a/c;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/a/a/d;->M:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/d;->M:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->Q:[Landroid/support/constraint/a/a/c;

    iget v1, p0, Landroid/support/constraint/a/a/d;->M:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/constraint/a/a/d;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a/d;->M:I

    goto :goto_1
.end method

.method private e(Landroid/support/constraint/a/a/c;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/constraint/a/a/d;->N:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/constraint/a/a/d;->N:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/a/a/c;

    iput-object v0, p0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    :cond_2
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->P:[Landroid/support/constraint/a/a/c;

    iget v1, p0, Landroid/support/constraint/a/a/d;->N:I

    aput-object p1, v0, v1

    iget v0, p0, Landroid/support/constraint/a/a/d;->N:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/constraint/a/a/d;->N:I

    goto :goto_1
.end method


# virtual methods
.method public A()V
    .locals 7

    const v6, 0x7fffffff

    const/4 v0, 0x0

    iget v2, p0, Landroid/support/constraint/a/a/d;->m:I

    iget v3, p0, Landroid/support/constraint/a/a/d;->n:I

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->k()I

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->l()I

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->l:Landroid/support/constraint/a/a/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->L:Landroid/support/constraint/a/a/h;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/constraint/a/a/h;

    invoke-direct {v1, p0}, Landroid/support/constraint/a/a/h;-><init>(Landroid/support/constraint/a/a/c;)V

    iput-object v1, p0, Landroid/support/constraint/a/a/d;->L:Landroid/support/constraint/a/a/h;

    :cond_0
    iget-object v1, p0, Landroid/support/constraint/a/a/d;->L:Landroid/support/constraint/a/a/h;

    invoke-virtual {v1, p0}, Landroid/support/constraint/a/a/h;->a(Landroid/support/constraint/a/a/c;)V

    iget v1, p0, Landroid/support/constraint/a/a/d;->G:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/d;->b(I)V

    iget v1, p0, Landroid/support/constraint/a/a/d;->H:I

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/d;->c(I)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->x()V

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    invoke-virtual {v1}, Landroid/support/constraint/a/e;->h()Landroid/support/constraint/a/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    :goto_0
    invoke-direct {p0}, Landroid/support/constraint/a/a/d;->D()V

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    instance-of v5, v0, Landroid/support/constraint/a/a/i;

    if-eqz v5, :cond_1

    check-cast v0, Landroid/support/constraint/a/a/i;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/i;->A()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iput v0, p0, Landroid/support/constraint/a/a/d;->m:I

    iput v0, p0, Landroid/support/constraint/a/a/d;->n:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/e;->b()V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    const v4, 0x7fffffff

    invoke-virtual {p0, v0, v4}, Landroid/support/constraint/a/a/d;->c(Landroid/support/constraint/a/e;I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/e;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    invoke-virtual {p0, v0, v6}, Landroid/support/constraint/a/a/d;->d(Landroid/support/constraint/a/e;I)V

    :goto_3
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->l:Landroid/support/constraint/a/a/c;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->k()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->l()I

    move-result v1

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->L:Landroid/support/constraint/a/a/h;

    invoke-virtual {v2, p0}, Landroid/support/constraint/a/a/h;->b(Landroid/support/constraint/a/a/c;)V

    iget v2, p0, Landroid/support/constraint/a/a/d;->G:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/constraint/a/a/d;->I:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/d;->d(I)V

    iget v0, p0, Landroid/support/constraint/a/a/d;->H:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/constraint/a/a/d;->J:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/d;->e(I)V

    :goto_4
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/e;->h()Landroid/support/constraint/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/c;)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->C()Landroid/support/constraint/a/a/d;

    move-result-object v0

    if-ne p0, v0, :cond_5

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->w()V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    invoke-virtual {p0, v0, v6}, Landroid/support/constraint/a/a/d;->b(Landroid/support/constraint/a/e;I)V

    goto :goto_3

    :cond_7
    iput v2, p0, Landroid/support/constraint/a/a/d;->m:I

    iput v3, p0, Landroid/support/constraint/a/a/d;->n:I

    goto :goto_4
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->D:Landroid/support/constraint/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/e;->b()V

    iput v1, p0, Landroid/support/constraint/a/a/d;->G:I

    iput v1, p0, Landroid/support/constraint/a/a/d;->I:I

    iput v1, p0, Landroid/support/constraint/a/a/d;->H:I

    iput v1, p0, Landroid/support/constraint/a/a/d;->J:I

    invoke-super {p0}, Landroid/support/constraint/a/a/i;->a()V

    return-void
.end method

.method a(Landroid/support/constraint/a/a/c;I)V
    .locals 2

    if-nez p2, :cond_2

    :goto_0
    iget-object v0, p1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, p1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v0, p1, :cond_0

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object p1, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/support/constraint/a/a/d;->d(Landroid/support/constraint/a/a/c;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    :goto_2
    iget-object v0, p1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, p1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v0, p1, :cond_3

    iget-object v0, p1, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object p1, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Landroid/support/constraint/a/a/d;->e(Landroid/support/constraint/a/a/c;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/constraint/a/a/d;->R:Z

    return-void
.end method

.method public c(Landroid/support/constraint/a/e;I)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/e;I)V

    iget-object v1, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-boolean v1, p0, Landroid/support/constraint/a/a/d;->R:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/constraint/a/a/d;->a(Landroid/support/constraint/a/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_6

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    instance-of v3, v0, Landroid/support/constraint/a/a/d;

    if-eqz v3, :cond_5

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v5, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v3, v5, :cond_1

    sget-object v5, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c$a;)V

    :cond_1
    sget-object v5, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v4, v5, :cond_2

    sget-object v5, Landroid/support/constraint/a/a/c$a;->a:Landroid/support/constraint/a/a/c$a;

    invoke-virtual {v0, v5}, Landroid/support/constraint/a/a/c;->b(Landroid/support/constraint/a/a/c$a;)V

    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/e;I)V

    sget-object v5, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v3, v5, :cond_3

    invoke-virtual {v0, v3}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/a/c$a;)V

    :cond_3
    sget-object v3, Landroid/support/constraint/a/a/c$a;->b:Landroid/support/constraint/a/a/c$a;

    if-ne v4, v3, :cond_4

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/c;->b(Landroid/support/constraint/a/a/c$a;)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/a/a/c;->a(Landroid/support/constraint/a/e;I)V

    goto :goto_2

    :cond_6
    iget v0, p0, Landroid/support/constraint/a/a/d;->M:I

    if-lez v0, :cond_7

    invoke-direct {p0, p1}, Landroid/support/constraint/a/a/d;->b(Landroid/support/constraint/a/e;)V

    :cond_7
    iget v0, p0, Landroid/support/constraint/a/a/d;->N:I

    if-lez v0, :cond_8

    invoke-direct {p0, p1}, Landroid/support/constraint/a/a/d;->c(Landroid/support/constraint/a/e;)V

    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(Landroid/support/constraint/a/e;I)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Landroid/support/constraint/a/a/d;->b(Landroid/support/constraint/a/e;I)V

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroid/support/constraint/a/a/d;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/a/a/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/constraint/a/a/c;->b(Landroid/support/constraint/a/e;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
