.class public final Lcom/tapjoy/internal/ec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1070
    const/16 v0, 0xb

    .line 155
    sput v0, Lcom/tapjoy/internal/ec;->a:I

    .line 2070
    const/16 v0, 0xc

    .line 157
    sput v0, Lcom/tapjoy/internal/ec;->b:I

    .line 3070
    const/16 v0, 0x10

    .line 159
    sput v0, Lcom/tapjoy/internal/ec;->c:I

    .line 4070
    const/16 v0, 0x1a

    .line 161
    sput v0, Lcom/tapjoy/internal/ec;->d:I

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 60
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 70
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 65
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
