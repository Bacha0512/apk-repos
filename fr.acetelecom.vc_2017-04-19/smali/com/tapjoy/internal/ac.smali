.class public final Lcom/tapjoy/internal/ac;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static varargs a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    const/16 v9, 0x5c

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-nez v0, :cond_1

    :cond_0
    move-object v5, v6

    :goto_0
    if-nez p2, :cond_3

    new-instance v0, Lcom/tapjoy/internal/ha;

    invoke-direct {v0, v6, p3, v5}, Lcom/tapjoy/internal/ha;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v1, v0, Lcom/tapjoy/internal/ha;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tapjoy/internal/ha;->c:Ljava/lang/Throwable;

    invoke-static {p0, p1, v1, v0}, Lcom/tapjoy/internal/ac;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p3, v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Throwable;

    move-object v5, v0

    goto :goto_0

    :cond_2
    move-object v5, v6

    goto :goto_0

    :cond_3
    if-nez p3, :cond_4

    new-instance v0, Lcom/tapjoy/internal/ha;

    invoke-direct {v0, p2}, Lcom/tapjoy/internal/ha;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v2

    move v1, v2

    :goto_2
    array-length v3, p3

    if-ge v0, v3, :cond_b

    const-string v3, "{}"

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    const/4 v3, -0x1

    if-ne v8, v3, :cond_6

    if-nez v1, :cond_5

    new-instance v0, Lcom/tapjoy/internal/ha;

    invoke-direct {v0, p2, p3, v5}, Lcom/tapjoy/internal/ha;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/tapjoy/internal/ha;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3, v5}, Lcom/tapjoy/internal/ha;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    if-eqz v8, :cond_7

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_7

    move v3, v4

    :goto_3
    if-eqz v3, :cond_a

    const/4 v3, 0x2

    if-lt v8, v3, :cond_8

    add-int/lit8 v3, v8, -0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_8

    move v3, v4

    :goto_4
    if-nez v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v8, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    add-int/lit8 v3, v8, -0x1

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p3, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v1, v3}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    add-int/lit8 v1, v8, 0x2

    goto :goto_5

    :cond_a
    invoke-virtual {p2, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p3, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v7, v1, v3}, Lcom/tapjoy/internal/hb;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    add-int/lit8 v1, v8, 0x2

    goto :goto_5

    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_c

    new-instance v0, Lcom/tapjoy/internal/ha;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3, v5}, Lcom/tapjoy/internal/ha;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lcom/tapjoy/internal/ha;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3, v6}, Lcom/tapjoy/internal/ha;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/tapjoy/internal/ac;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
