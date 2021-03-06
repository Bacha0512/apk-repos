.class public Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "OutgoingAccountsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;
    }
.end annotation


# static fields
.field private static setAlphaMethod:Ljava/lang/reflect/Method;


# instance fields
.field private INDEX_DISPLAY_NAME:Ljava/lang/Integer;

.field private INDEX_ID:Ljava/lang/Integer;

.field private INDEX_NBR:Ljava/lang/Integer;

.field private INDEX_STATUS_COLOR:Ljava/lang/Integer;

.field private INDEX_STATUS_FOR_OUTGOING:Ljava/lang/Integer;

.field private INDEX_WIZARD:Ljava/lang/Integer;

.field private final fragment:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->setAlphaMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "aFragment"    # Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03004d

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 51
    iput-object v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    .line 52
    iput-object v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_WIZARD:Ljava/lang/Integer;

    .line 53
    iput-object v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_NBR:Ljava/lang/Integer;

    .line 54
    iput-object v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_STATUS_FOR_OUTGOING:Ljava/lang/Integer;

    .line 55
    iput-object v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_STATUS_COLOR:Ljava/lang/Integer;

    .line 56
    iput-object v3, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_ID:Ljava/lang/Integer;

    .line 47
    iput-object p1, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->fragment:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;

    .line 48
    return-void
.end method

.method private initIndexes(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_ID:Ljava/lang/Integer;

    .line 116
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    .line 117
    const-string v0, "wizard"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_WIZARD:Ljava/lang/Integer;

    .line 118
    const-string v0, "nbr_to_call"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_NBR:Ljava/lang/Integer;

    .line 119
    const-string v0, "status_color"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_STATUS_COLOR:Ljava/lang/Integer;

    .line 120
    const-string v0, "status_for_outgoing"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_STATUS_FOR_OUTGOING:Ljava/lang/Integer;

    .line 122
    :cond_0
    return-void
.end method

.method private setRowViewAlpha(Landroid/view/View;F)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    .line 139
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/weirdvoice/utils/Compatibility;->isCompatible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    sget-object v2, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->setAlphaMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 143
    :try_start_0
    const-class v2, Landroid/view/View;

    const-string v3, "setAlpha"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->setAlphaMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    sget-object v2, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->setAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 149
    sget-object v2, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->setAlphaMethod:Ljava/lang/reflect/Method;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, p1, v3}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->safelyInvokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_1
    :goto_1
    return-void

    .line 154
    :cond_2
    const v2, 0x7f0b003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 155
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    mul-float v3, v4, p2

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    const v2, 0x7f0b0042

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 157
    .restart local v1    # "tv":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    mul-float v3, v4, p2

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    const v2, 0x7f0b003b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 160
    .local v0, "img":Landroid/widget/ImageView;
    mul-float v2, v4, p2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_1

    .line 144
    .end local v0    # "img":Landroid/widget/ImageView;
    .end local v1    # "tv":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;

    .line 61
    .local v11, "tag":Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;
    if-eqz v11, :cond_1

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->initIndexes(Landroid/database/Cursor;)V

    .line 63
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_ID:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 64
    .local v2, "accId":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_DISPLAY_NAME:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_WIZARD:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "wizard":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_NBR:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 67
    .local v10, "nbr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_STATUS_COLOR:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 68
    .local v6, "color":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_STATUS_FOR_OUTGOING:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const/4 v7, 0x1

    .line 70
    .local v7, "enabled":Z
    :goto_0
    iget-object v13, v11, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->name:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v13, v11, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->name:Landroid/widget/TextView;

    invoke-virtual {v13, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v13, v11, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->status:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    const v15, 0x7f0c005f

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    if-eqz v7, :cond_3

    const/high16 v13, 0x3f800000    # 1.0f

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->setRowViewAlpha(Landroid/view/View;F)V

    .line 76
    const/4 v8, 0x0

    .line 77
    .local v8, "iconSet":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->fragment:Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;

    invoke-virtual {v13}, Lcom/weirdvoice/ui/outgoingcall/OutgoingCallListFragment;->getAccountLoader()Lcom/weirdvoice/ui/account/AccountsLoader;

    move-result-object v4

    .line 78
    .local v4, "accLoader":Lcom/weirdvoice/ui/account/AccountsLoader;
    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v4, v2, v3}, Lcom/weirdvoice/ui/account/AccountsLoader;->getCallHandlerWithAccountId(J)Lcom/weirdvoice/utils/CallHandlerPlugin;

    move-result-object v5

    .line 80
    .local v5, "ch":Lcom/weirdvoice/utils/CallHandlerPlugin;
    if-eqz v5, :cond_0

    .line 81
    iget-object v13, v11, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 82
    const/4 v8, 0x1

    .line 86
    .end local v5    # "ch":Lcom/weirdvoice/utils/CallHandlerPlugin;
    :cond_0
    if-nez v8, :cond_1

    .line 87
    iget-object v13, v11, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    invoke-static {v12}, Lcom/weirdvoice/wizards/WizardUtils;->getWizardIconRes(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    .end local v2    # "accId":J
    .end local v4    # "accLoader":Lcom/weirdvoice/ui/account/AccountsLoader;
    .end local v6    # "color":I
    .end local v7    # "enabled":Z
    .end local v8    # "iconSet":Z
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "nbr":Ljava/lang/String;
    .end local v12    # "wizard":Ljava/lang/String;
    :cond_1
    return-void

    .line 68
    .restart local v2    # "accId":J
    .restart local v6    # "color":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "nbr":Ljava/lang/String;
    .restart local v12    # "wizard":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 74
    .restart local v7    # "enabled":Z
    :cond_3
    const v13, 0x3e99999a    # 0.3f

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0, p1}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 131
    .local v0, "c":Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->initIndexes(Landroid/database/Cursor;)V

    .line 132
    iget-object v2, p0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;->INDEX_STATUS_FOR_OUTGOING:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 98
    new-instance v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;-><init>(Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter;Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;)V

    .line 99
    .local v0, "tag":Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;
    const v2, 0x7f0b003c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->name:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f0b0042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->status:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f0b003b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;->icon:Landroid/widget/ImageView;

    .line 102
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    .end local v0    # "tag":Lcom/weirdvoice/ui/outgoingcall/OutgoingAccountsAdapter$AccListItemViewTag;
    :cond_0
    return-object v1
.end method
