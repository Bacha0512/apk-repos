.class Lcom/oneaudience/sdk/m$f;
.super Lcom/oneaudience/sdk/m$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#8D8E91"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oneaudience/sdk/m$f;->a:I

    const-string v0, "#646567"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oneaudience/sdk/m$f;->b:I

    const-string v0, "#5A5A5D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oneaudience/sdk/m$f;->c:I

    const-string v0, "#2F3031"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/oneaudience/sdk/m$f;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/oneaudience/sdk/m$d;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-instance v2, Lcom/oneaudience/sdk/m$i;

    new-instance v3, Lcom/oneaudience/sdk/m$c;

    sget v4, Lcom/oneaudience/sdk/m$f;->a:I

    sget v5, Lcom/oneaudience/sdk/m$f;->b:I

    invoke-direct {v3, v4, v5}, Lcom/oneaudience/sdk/m$c;-><init>(II)V

    new-instance v4, Lcom/oneaudience/sdk/m$c;

    sget v5, Lcom/oneaudience/sdk/m$f;->c:I

    sget v6, Lcom/oneaudience/sdk/m$f;->d:I

    invoke-direct {v4, v5, v6}, Lcom/oneaudience/sdk/m$c;-><init>(II)V

    invoke-direct {v2, v3, v4}, Lcom/oneaudience/sdk/m$i;-><init>(Lcom/oneaudience/sdk/m$c;Lcom/oneaudience/sdk/m$c;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/oneaudience/sdk/m$g;

    invoke-direct {v2}, Lcom/oneaudience/sdk/m$g;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/oneaudience/sdk/m$f;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/oneaudience/sdk/m$f;->a()V

    return-void
.end method
