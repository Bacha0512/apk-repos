.class public abstract Lcom/twitter/sdk/android/core/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:J
    .annotation runtime Lcom/google/a/a/c;
        a = "created_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/twitter/sdk/android/core/a;-><init>(J)V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/sdk/android/core/a;->a:J

    return-void
.end method
