.class Lcom/oneaudience/sdk/m$i;
.super Landroid/graphics/drawable/StateListDrawable;

# interfaces
.implements Lcom/oneaudience/sdk/m$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneaudience/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# direct methods
.method constructor <init>(Lcom/oneaudience/sdk/m$c;Lcom/oneaudience/sdk/m$c;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/oneaudience/sdk/m$i;->addState([ILandroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p0, v0, p1}, Lcom/oneaudience/sdk/m$i;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method
