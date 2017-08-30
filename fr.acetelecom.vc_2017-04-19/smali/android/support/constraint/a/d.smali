.class public Landroid/support/constraint/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;
    .locals 9

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IFLandroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;

    if-eqz p8, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;
    .locals 2

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;I)V

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;FZ)Landroid/support/constraint/a/b;
    .locals 1

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v0

    if-eqz p5, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;F)Landroid/support/constraint/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/support/constraint/a/b;->a(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    if-eqz p4, :cond_0

    iget-object v2, v1, Landroid/support/constraint/a/b;->f:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a;->c(Landroid/support/constraint/a/g;)F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;I)V

    :cond_0
    return-object v1
.end method

.method public static c(Landroid/support/constraint/a/e;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;IZ)Landroid/support/constraint/a/b;
    .locals 3

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->d()Landroid/support/constraint/a/g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/constraint/a/e;->c()Landroid/support/constraint/a/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0, p3}, Landroid/support/constraint/a/b;->b(Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;Landroid/support/constraint/a/g;I)Landroid/support/constraint/a/b;

    if-eqz p4, :cond_0

    iget-object v2, v1, Landroid/support/constraint/a/b;->f:Landroid/support/constraint/a/a;

    invoke-virtual {v2, v0}, Landroid/support/constraint/a/a;->c(Landroid/support/constraint/a/g;)F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/b;I)V

    :cond_0
    return-object v1
.end method
