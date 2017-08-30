.class Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;
.super Ljava/lang/Object;
.source "CallTypeIconsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/ui/calllog/CallTypeIconsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resources"
.end annotation


# instance fields
.field public iconMargin:Ljava/lang/Integer;

.field public incoming:Landroid/graphics/drawable/Drawable;

.field public missed:Landroid/graphics/drawable/Drawable;

.field public outgoing:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 119
    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    .line 120
    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    .line 121
    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 126
    .local v1, "t":Lcom/weirdvoice/utils/Theme;
    invoke-virtual {p2}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-static {p1}, Lcom/weirdvoice/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/weirdvoice/utils/Theme;

    move-result-object v1

    .line 129
    :cond_0
    if-eqz v1, :cond_1

    .line 130
    const-string v2, "ic_call_incoming"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 131
    const-string v2, "ic_call_outgoing"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    .line 132
    const-string v2, "ic_call_missed"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    .line 133
    const-string v2, "call_log_icon_margin"

    invoke-virtual {v1, v2}, Lcom/weirdvoice/utils/Theme;->getDimension(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 136
    const v2, 0x7f020184

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->incoming:Landroid/graphics/drawable/Drawable;

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    .line 139
    const v2, 0x7f020186

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->outgoing:Landroid/graphics/drawable/Drawable;

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_4

    .line 142
    const v2, 0x7f020185

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->missed:Landroid/graphics/drawable/Drawable;

    .line 144
    :cond_4
    iget-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    if-nez v2, :cond_5

    .line 145
    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/weirdvoice/ui/calllog/CallTypeIconsView$Resources;->iconMargin:Ljava/lang/Integer;

    .line 147
    :cond_5
    return-void
.end method
