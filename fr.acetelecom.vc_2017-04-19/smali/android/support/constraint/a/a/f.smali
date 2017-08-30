.class public Landroid/support/constraint/a/a/f;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/e;ILandroid/support/constraint/a/a/c;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v4, v2

    move-object v5, p3

    move v2, v3

    move v3, v1

    move v1, v0

    :goto_0
    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v4, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-eq v0, v4, :cond_3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/c;->k()I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_2

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_3
    iget-object v2, v5, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v2, :cond_4

    iget-object v2, v5, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    :goto_4
    if-eqz v2, :cond_12

    iget-object v4, v2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_12

    iget-object v4, v2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v4, v5, :cond_12

    :cond_0
    const/4 v2, 0x0

    move-object v4, v5

    move-object v5, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget v0, v5, Landroid/support/constraint/a/a/c;->B:F

    add-float/2addr v0, v1

    move v1, v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    if-eqz v4, :cond_6

    iget-object v0, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_a

    iget-object v0, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->i()I

    move-result v0

    :goto_5
    iget-object v5, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_6

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, p0, :cond_6

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->q()I

    move-result v0

    :cond_6
    sub-int/2addr v0, v6

    int-to-float v0, v0

    int-to-float v2, v2

    sub-float v5, v0, v2

    add-int/lit8 v0, v3, 0x1

    int-to-float v0, v0

    div-float v0, v5, v0

    const/4 v2, 0x0

    if-nez p2, :cond_b

    move v3, v0

    move v4, v0

    :goto_6
    if-eqz p3, :cond_11

    iget-object v0, p3, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_c

    iget-object v0, p3, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    :goto_7
    iget-object v2, p3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v2, :cond_d

    iget-object v2, p3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/b;->d()I

    move-result v2

    :goto_8
    int-to-float v6, v0

    add-float/2addr v3, v6

    iget-object v6, p3, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v6, v6, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v7, v3

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v6, p3, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v7, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v6, v7, :cond_f

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-nez v6, :cond_e

    int-to-float v0, v0

    sub-float v0, v4, v0

    int-to-float v6, v2

    sub-float/2addr v0, v6

    add-float/2addr v0, v3

    :goto_9
    iget-object v3, p3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    if-nez p2, :cond_7

    add-float/2addr v0, v4

    :cond_7
    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_10

    iget-object v0, p3, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    :goto_a
    if-eqz v0, :cond_8

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v3, p3, :cond_8

    const/4 v0, 0x0

    :cond_8
    if-ne v0, p0, :cond_9

    const/4 v0, 0x0

    :cond_9
    move v3, v2

    move-object p3, v0

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_b
    int-to-float v0, p2

    div-float v0, v5, v0

    move v3, v2

    move v4, v0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    iget v6, p3, Landroid/support/constraint/a/a/c;->B:F

    mul-float/2addr v6, v5

    div-float/2addr v6, v1

    int-to-float v0, v0

    sub-float v0, v6, v0

    int-to-float v6, v2

    sub-float/2addr v0, v6

    add-float/2addr v0, v3

    goto :goto_9

    :cond_f
    invoke-virtual {p3}, Landroid/support/constraint/a/a/c;->k()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    :cond_11
    return-void

    :cond_12
    move-object v4, v5

    move-object v5, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method static a(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/c;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/4 v4, 0x2

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v3, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v0, v3, :cond_1

    iput v1, p2, Landroid/support/constraint/a/a/c;->a:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_4

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_4

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v0, p0, :cond_3

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v0, p0, :cond_3

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v1

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->u:Landroid/support/constraint/a/a/c$a;

    sget-object v3, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->k()I

    move-result v2

    sub-int v0, v2, v0

    :goto_1
    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v4, p2, Landroid/support/constraint/a/a/c;->a:I

    invoke-virtual {p2, v1, v0}, Landroid/support/constraint/a/a/c;->d(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->k()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->k()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int v0, v3, v0

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p2, Landroid/support/constraint/a/a/c;->s:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    add-int/2addr v1, v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->k()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iput v1, p2, Landroid/support/constraint/a/a/c;->a:I

    goto :goto_0

    :cond_4
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_5

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v0, p0, :cond_5

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->k()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v4, p2, Landroid/support/constraint/a/a/c;->a:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/c;->d(II)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_6

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v0, p0, :cond_6

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->k()I

    move-result v0

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->k()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v4, p2, Landroid/support/constraint/a/a/c;->a:I

    invoke-virtual {p2, v1, v0}, Landroid/support/constraint/a/a/c;->d(II)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_7

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget v0, v0, Landroid/support/constraint/a/a/c;->a:I

    if-ne v0, v4, :cond_7

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v0, v0, Landroid/support/constraint/a/g;->e:F

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b;->d()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->k()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v4, p2, Landroid/support/constraint/a/a/c;->a:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/c;->d(II)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_8

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget v0, v0, Landroid/support/constraint/a/a/c;->a:I

    if-ne v0, v4, :cond_8

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v0, v0, Landroid/support/constraint/a/g;->e:F

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b;->d()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->k()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v4, p2, Landroid/support/constraint/a/a/c;->a:I

    invoke-virtual {p2, v1, v0}, Landroid/support/constraint/a/a/c;->d(II)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    iget-object v3, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_a

    move v3, v1

    :goto_3
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    instance-of v0, p2, Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_d

    move-object v0, p2

    check-cast v0, Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->A()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->C()I

    move-result v1

    if-eq v1, v6, :cond_b

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->C()I

    move-result v0

    int-to-float v0, v0

    :goto_4
    add-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v4, p2, Landroid/support/constraint/a/a/c;->a:I

    iput v4, p2, Landroid/support/constraint/a/a/c;->b:I

    invoke-virtual {p2, v0, v0}, Landroid/support/constraint/a/a/c;->d(II)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->l()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/support/constraint/a/a/c;->e(II)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v3, v2

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->D()I

    move-result v1

    if-eq v1, v6, :cond_c

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->k()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->D()I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->k()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->B()F

    move-result v0

    mul-float/2addr v0, v1

    goto :goto_4

    :cond_d
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->i()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->k()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->e:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v4, p2, Landroid/support/constraint/a/a/c;->a:I

    goto/16 :goto_0
.end method

.method static b(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/e;ILandroid/support/constraint/a/a/c;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move-object v4, v2

    move-object v5, p3

    move v2, v3

    move v3, v1

    move v1, v0

    :goto_0
    if-eqz v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v4, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-eq v0, v4, :cond_3

    invoke-virtual {v5}, Landroid/support/constraint/a/a/c;->l()I

    move-result v0

    add-int/2addr v2, v0

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_1

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_2

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_3
    iget-object v2, v5, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v2, :cond_4

    iget-object v2, v5, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    :goto_4
    if-eqz v2, :cond_12

    iget-object v4, v2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_12

    iget-object v4, v2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v4, v5, :cond_12

    :cond_0
    const/4 v2, 0x0

    move-object v4, v5

    move-object v5, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget v0, v5, Landroid/support/constraint/a/a/c;->C:F

    add-float/2addr v0, v1

    move v1, v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    if-eqz v4, :cond_6

    iget-object v0, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_a

    iget-object v0, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/c;->i()I

    move-result v0

    :goto_5
    iget-object v5, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v5, v5, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v5, :cond_6

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v4, p0, :cond_6

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->r()I

    move-result v0

    :cond_6
    sub-int/2addr v0, v6

    int-to-float v0, v0

    int-to-float v2, v2

    sub-float v5, v0, v2

    add-int/lit8 v0, v3, 0x1

    int-to-float v0, v0

    div-float v0, v5, v0

    const/4 v2, 0x0

    if-nez p2, :cond_b

    move v3, v0

    move v4, v0

    :goto_6
    if-eqz p3, :cond_11

    iget-object v0, p3, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_c

    iget-object v0, p3, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    :goto_7
    iget-object v2, p3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v2, :cond_d

    iget-object v2, p3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v2}, Landroid/support/constraint/a/a/b;->d()I

    move-result v2

    :goto_8
    int-to-float v6, v0

    add-float/2addr v3, v6

    iget-object v6, p3, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v6, v6, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v7, v3

    float-to-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v6, p3, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v7, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v6, v7, :cond_f

    const/4 v6, 0x0

    cmpl-float v6, v1, v6

    if-nez v6, :cond_e

    int-to-float v0, v0

    sub-float v0, v4, v0

    int-to-float v6, v2

    sub-float/2addr v0, v6

    add-float/2addr v0, v3

    :goto_9
    iget-object v3, p3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    if-nez p2, :cond_7

    add-float/2addr v0, v4

    :cond_7
    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_10

    iget-object v0, p3, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    :goto_a
    if-eqz v0, :cond_8

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-eq v3, p3, :cond_8

    const/4 v0, 0x0

    :cond_8
    if-ne v0, p0, :cond_9

    const/4 v0, 0x0

    :cond_9
    move v3, v2

    move-object p3, v0

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_b
    int-to-float v0, p2

    div-float v0, v5, v0

    move v3, v2

    move v4, v0

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    :cond_d
    const/4 v2, 0x0

    goto :goto_8

    :cond_e
    iget v6, p3, Landroid/support/constraint/a/a/c;->C:F

    mul-float/2addr v6, v5

    div-float/2addr v6, v1

    int-to-float v0, v0

    sub-float v0, v6, v0

    int-to-float v6, v2

    sub-float/2addr v0, v6

    add-float/2addr v0, v3

    goto :goto_9

    :cond_f
    invoke-virtual {p3}, Landroid/support/constraint/a/a/c;->l()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    :cond_11
    return-void

    :cond_12
    move-object v4, v5

    move-object v5, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method static b(Landroid/support/constraint/a/a/d;Landroid/support/constraint/a/e;Landroid/support/constraint/a/a/c;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x2

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v3, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v0, v3, :cond_1

    iput v1, p2, Landroid/support/constraint/a/a/c;->b:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_5

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_5

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v0, p0, :cond_4

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v0, p0, :cond_4

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v1

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/constraint/a/a/d;->v:Landroid/support/constraint/a/a/c$a;

    sget-object v3, Landroid/support/constraint/a/a/c$a;->c:Landroid/support/constraint/a/a/c$a;

    if-ne v2, v3, :cond_3

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget v2, p2, Landroid/support/constraint/a/a/c;->q:I

    if-lez v2, :cond_2

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v3, p2, Landroid/support/constraint/a/a/c;->q:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    :cond_2
    iput v5, p2, Landroid/support/constraint/a/a/c;->b:I

    invoke-virtual {p2, v1, v0}, Landroid/support/constraint/a/a/c;->e(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->l()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int v0, v3, v0

    sub-int/2addr v0, v2

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p2, Landroid/support/constraint/a/a/c;->t:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v1, v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    iput v1, p2, Landroid/support/constraint/a/a/c;->b:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_7

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v0, p0, :cond_7

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/b;->d()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget v2, p2, Landroid/support/constraint/a/a/c;->q:I

    if-lez v2, :cond_6

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v3, p2, Landroid/support/constraint/a/a/c;->q:I

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    :cond_6
    iput v5, p2, Landroid/support/constraint/a/a/c;->b:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/c;->e(II)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_9

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    if-ne v0, p0, :cond_9

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->l()I

    move-result v0

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b;->d()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget v2, p2, Landroid/support/constraint/a/a/c;->q:I

    if-lez v2, :cond_8

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v3, p2, Landroid/support/constraint/a/a/c;->q:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    :cond_8
    iput v5, p2, Landroid/support/constraint/a/a/c;->b:I

    invoke-virtual {p2, v1, v0}, Landroid/support/constraint/a/a/c;->e(II)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_b

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget v0, v0, Landroid/support/constraint/a/a/c;->b:I

    if-ne v0, v5, :cond_b

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v0, v0, Landroid/support/constraint/a/g;->e:F

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b;->d()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget v2, p2, Landroid/support/constraint/a/a/c;->q:I

    if-lez v2, :cond_a

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v3, p2, Landroid/support/constraint/a/a/c;->q:I

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    :cond_a
    iput v5, p2, Landroid/support/constraint/a/a/c;->b:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/c;->e(II)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_d

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget v0, v0, Landroid/support/constraint/a/a/c;->b:I

    if-ne v0, v5, :cond_d

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v0, v0, Landroid/support/constraint/a/g;->e:F

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {v1}, Landroid/support/constraint/a/a/b;->d()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget v2, p2, Landroid/support/constraint/a/a/c;->q:I

    if-lez v2, :cond_c

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v3, p2, Landroid/support/constraint/a/a/c;->q:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    :cond_c
    iput v5, p2, Landroid/support/constraint/a/a/c;->b:I

    invoke-virtual {p2, v1, v0}, Landroid/support/constraint/a/a/c;->e(II)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_e

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->a:Landroid/support/constraint/a/a/c;

    iget v0, v0, Landroid/support/constraint/a/a/c;->b:I

    if-ne v0, v5, :cond_e

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v0, v0, Landroid/support/constraint/a/g;->e:F

    iget v1, p2, Landroid/support/constraint/a/a/c;->q:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v3, p2, Landroid/support/constraint/a/a/c;->q:I

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v5, p2, Landroid/support/constraint/a/a/c;->b:I

    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/a/a/c;->e(II)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v0, v0, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v0, :cond_f

    move v0, v1

    :goto_2
    iget-object v3, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, v3, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v3, :cond_10

    move v3, v1

    :goto_3
    iget-object v4, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v4, v4, Landroid/support/constraint/a/a/b;->c:Landroid/support/constraint/a/a/b;

    if-eqz v4, :cond_11

    :goto_4
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    instance-of v0, p2, Landroid/support/constraint/a/a/e;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Landroid/support/constraint/a/a/e;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->A()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v3, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v3}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v3

    iput-object v3, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->C()I

    move-result v1

    if-eq v1, v7, :cond_12

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->C()I

    move-result v0

    int-to-float v0, v0

    :goto_5
    add-float/2addr v0, v6

    float-to-int v0, v0

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iput v5, p2, Landroid/support/constraint/a/a/c;->b:I

    iput v5, p2, Landroid/support/constraint/a/a/c;->a:I

    invoke-virtual {p2, v0, v0}, Landroid/support/constraint/a/a/c;->e(II)V

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->k()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/support/constraint/a/a/c;->d(II)V

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto :goto_2

    :cond_10
    move v3, v2

    goto :goto_3

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_12
    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->D()I

    move-result v1

    if-eq v1, v7, :cond_13

    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->l()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->D()I

    move-result v0

    sub-int v0, v1, v0

    int-to-float v0, v0

    goto :goto_5

    :cond_13
    invoke-virtual {p0}, Landroid/support/constraint/a/a/d;->l()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/support/constraint/a/a/e;->B()F

    move-result v0

    mul-float/2addr v0, v1

    goto :goto_5

    :cond_14
    iget-object v0, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v0, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v1}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v1

    iput-object v1, v0, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->j()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/constraint/a/a/c;->l()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->d:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->f:Landroid/support/constraint/a/a/b;

    iget-object v2, v2, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    iget v1, p2, Landroid/support/constraint/a/a/c;->q:I

    if-lez v1, :cond_15

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v2, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    invoke-virtual {p1, v2}, Landroid/support/constraint/a/e;->a(Ljava/lang/Object;)Landroid/support/constraint/a/g;

    move-result-object v2

    iput-object v2, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget-object v1, p2, Landroid/support/constraint/a/a/c;->g:Landroid/support/constraint/a/a/b;

    iget-object v1, v1, Landroid/support/constraint/a/a/b;->f:Landroid/support/constraint/a/g;

    iget v2, p2, Landroid/support/constraint/a/a/c;->q:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/g;I)V

    :cond_15
    iput v5, p2, Landroid/support/constraint/a/a/c;->b:I

    goto/16 :goto_0
.end method
