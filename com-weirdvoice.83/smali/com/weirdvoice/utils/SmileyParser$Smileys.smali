.class Lcom/weirdvoice/utils/SmileyParser$Smileys;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/utils/SmileyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Smileys"
.end annotation


# static fields
.field public static final ANGEL:I = 0xb

.field public static final COOL:I = 0x7

.field public static final CRYING:I = 0xd

.field public static final EMBARRASSED:I = 0xa

.field public static final FOOT_IN_MOUTH:I = 0x9

.field public static final HAPPY:I = 0x0

.field public static final KISSING:I = 0x5

.field public static final LAUGHING:I = 0xf

.field public static final LIPS_ARE_SEALED:I = 0xe

.field public static final MONEY_MOUTH:I = 0x8

.field public static final SAD:I = 0x1

.field public static final SURPRISED:I = 0x4

.field public static final TONGUE_STICKING_OUT:I = 0x3

.field public static final UNDECIDED:I = 0xc

.field public static final WINKING:I = 0x2

.field public static final WTF:I = 0x10

.field public static final YELLING:I = 0x6

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/weirdvoice/utils/SmileyParser$Smileys;->sIconIds:[I

    .line 102
    return-void

    .line 66
    :array_0
    .array-data 4
        0x7f020075
        0x7f02007a
        0x7f02007e
        0x7f02007c
        0x7f02007b
        0x7f020076
        0x7f020080
        0x7f020071
        0x7f020079
        0x7f020074
        0x7f020073
        0x7f020070
        0x7f02007d
        0x7f020072
        0x7f020078
        0x7f020077
        0x7f02007f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .param p0, "which"    # I

    .prologue
    .line 105
    sget-object v0, Lcom/weirdvoice/utils/SmileyParser$Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method
