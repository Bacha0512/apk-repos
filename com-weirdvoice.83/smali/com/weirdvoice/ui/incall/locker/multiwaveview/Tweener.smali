.class Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
.super Ljava/lang/Object;
.source "Tweener.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Tweener"

.field private static mCleanupListener:Landroid/animation/Animator$AnimatorListener;

.field private static sTweens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field animator:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    .line 151
    new-instance v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener$1;

    invoke-direct {v0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener$1;-><init>()V

    sput-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/animation/ObjectAnimator;)V
    .locals 0
    .param p1, "anim"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    .line 53
    return-void
.end method

.method static synthetic access$0(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->remove(Landroid/animation/Animator;)V

    return-void
.end method

.method private static remove(Landroid/animation/Animator;)V
    .locals 3
    .param p0, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 56
    sget-object v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    iget-object v2, v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    if-ne v2, p0, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private static varargs replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    array-length v4, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    .line 187
    return-void

    .line 175
    :cond_0
    aget-object v0, p1, v3

    .line 176
    .local v0, "killobject":Ljava/lang/Object;
    sget-object v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    .line 177
    .local v1, "tween":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    if-eqz v1, :cond_1

    .line 178
    iget-object v2, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 179
    if-eqz p0, :cond_2

    .line 180
    iget-object v5, v1, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    .line 181
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/PropertyValuesHolder;

    .line 180
    invoke-virtual {v5, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 175
    :cond_1
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 183
    :cond_2
    sget-object v2, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 172
    return-void
.end method

.method public static varargs to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    .locals 19
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "duration"    # J
    .param p3, "vars"    # [Ljava/lang/Object;

    .prologue
    .line 69
    const-wide/16 v4, 0x0

    .line 70
    .local v4, "delay":J
    const/4 v12, 0x0

    .line 71
    .local v12, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/4 v9, 0x0

    .line 72
    .local v9, "listener":Landroid/animation/Animator$AnimatorListener;
    const/4 v7, 0x0

    .line 75
    .local v7, "interpolator":Landroid/animation/TimeInterpolator;
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    array-length v14, v0

    div-int/lit8 v14, v14, 0x2

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v10, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v14, v0

    if-lt v6, v14, :cond_3

    .line 110
    sget-object v14, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    .line 111
    .local v11, "tween":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    const/4 v2, 0x0

    .line 112
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    if-nez v11, :cond_f

    .line 114
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/animation/PropertyValuesHolder;

    .line 113
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 115
    new-instance v11, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    .end local v11    # "tween":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    invoke-direct {v11, v2}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;-><init>(Landroid/animation/ObjectAnimator;)V

    .line 116
    .restart local v11    # "tween":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    sget-object v14, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :goto_1
    if-eqz v7, :cond_0

    .line 124
    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 128
    :cond_0
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 129
    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    if-eqz v12, :cond_1

    .line 131
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    .line 132
    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    :cond_1
    if-eqz v9, :cond_2

    .line 135
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 136
    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    :cond_2
    sget-object v14, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->mCleanupListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 140
    return-object v11

    .line 77
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v11    # "tween":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    :cond_3
    aget-object v14, p3, v6

    instance-of v14, v14, Ljava/lang/String;

    if-nez v14, :cond_4

    .line 78
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Key must be a string: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v16, p3, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 80
    :cond_4
    aget-object v8, p3, v6

    check-cast v8, Ljava/lang/String;

    .line 81
    .local v8, "key":Ljava/lang/String;
    add-int/lit8 v14, v6, 0x1

    aget-object v13, p3, v14

    .line 82
    .local v13, "value":Ljava/lang/Object;
    const-string v14, "simultaneousTween"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 84
    const-string v14, "ease"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v7, v13

    .line 85
    check-cast v7, Landroid/animation/TimeInterpolator;

    .line 76
    .end local v13    # "value":Ljava/lang/Object;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    .line 86
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_6
    const-string v14, "onUpdate"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    const-string v14, "onUpdateListener"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_7
    move-object v12, v13

    .line 87
    check-cast v12, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 88
    goto :goto_2

    :cond_8
    const-string v14, "onComplete"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string v14, "onCompleteListener"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_9
    move-object v9, v13

    .line 89
    check-cast v9, Landroid/animation/Animator$AnimatorListener;

    .line 90
    goto :goto_2

    :cond_a
    const-string v14, "delay"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 91
    check-cast v13, Ljava/lang/Number;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 92
    goto :goto_2

    .restart local v13    # "value":Ljava/lang/Object;
    :cond_b
    const-string v14, "syncWith"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 94
    instance-of v14, v13, [F

    if-eqz v14, :cond_c

    .line 95
    const/4 v14, 0x2

    new-array v15, v14, [F

    const/16 v16, 0x0

    move-object v14, v13

    .line 96
    check-cast v14, [F

    const/16 v17, 0x0

    aget v14, v14, v17

    aput v14, v15, v16

    const/4 v14, 0x1

    check-cast v13, [F

    .end local v13    # "value":Ljava/lang/Object;
    const/16 v16, 0x1

    aget v16, v13, v16

    aput v16, v15, v14

    .line 95
    invoke-static {v8, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_c
    instance-of v14, v13, [I

    if-eqz v14, :cond_d

    .line 98
    const/4 v14, 0x2

    new-array v15, v14, [I

    const/16 v16, 0x0

    move-object v14, v13

    .line 99
    check-cast v14, [I

    const/16 v17, 0x0

    aget v14, v14, v17

    aput v14, v15, v16

    const/4 v14, 0x1

    check-cast v13, [I

    .end local v13    # "value":Ljava/lang/Object;
    const/16 v16, 0x1

    aget v16, v13, v16

    aput v16, v15, v14

    .line 98
    invoke-static {v8, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 100
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_d
    instance-of v14, v13, Ljava/lang/Number;

    if-eqz v14, :cond_e

    .line 101
    check-cast v13, Ljava/lang/Number;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 102
    .local v3, "floatValue":F
    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v3, v14, v15

    invoke-static {v8, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 104
    .end local v3    # "floatValue":F
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_e
    new-instance v14, Ljava/lang/IllegalArgumentException;

    .line 105
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Bad argument for key \""

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" with value "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 104
    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 119
    .end local v8    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/Object;
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    .restart local v11    # "tween":Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    :cond_f
    sget-object v14, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->sTweens:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    iget-object v2, v14, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    .line 120
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    invoke-static {v10, v14}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->replace(Ljava/util/ArrayList;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method


# virtual methods
.method varargs from(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "duration"    # J
    .param p4, "vars"    # [Ljava/lang/Object;

    .prologue
    .line 147
    invoke-static {p1, p2, p3, p4}, Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/weirdvoice/ui/incall/locker/multiwaveview/Tweener;

    move-result-object v0

    return-object v0
.end method
