.class public Lcom/weirdvoice/ui/dialpad/DialerFragment;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "DialerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;
.implements Lcom/weirdvoice/ui/SipHome$ViewPagerVisibilityListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;,
        Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;
    }
.end annotation


# static fields
.field private static final CONTACT_PICKER_RESULT:I = 0xc7

.field private static final COUNTRYAREACODE_URI_S:Ljava/lang/String;

.field private static final COUNTRY_URI_S:Ljava/lang/String;

.field private static final NUMBER_0:I = 0x1b58

.field protected static final PICKUP_PHONE:I = 0x0

.field private static final TAG_AUTOCOMPLETE_SIDE_FRAG:Ljava/lang/String; = "autocomplete_dial_side_frag"

.field private static final TEXT_MODE_KEY:Ljava/lang/String; = "text_mode"

.field private static final THIS_FILE:Ljava/lang/String; = "DialerFragment"

.field private static contactName:Ljava/lang/String;

.field private static countries:[[Ljava/lang/String;

.field private static countryAreaCode:[[Ljava/lang/String;

.field private static nbPhones:I

.field private static phonelist_num:[Ljava/lang/String;

.field private static phonelist_typ:[Ljava/lang/String;

.field public static predial:Ljava/lang/String;

.field public static selectedCountryCode:Ljava/lang/String;


# instance fields
.field accountButtonChangeListener:Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

.field private accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

.field private accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

.field private autoCompleteAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

.field private autoCompleteFragment:Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;

.field private autoCompleteList:Landroid/widget/ListView;

.field private autoCompleteListItemListener:Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;

.field private but_ctcbook:Landroid/widget/ImageButton;

.field private but_weird:Landroid/widget/ImageButton;

.field private final buttonsToAttach:[I

.field private final buttonsToLongAttach:[I

.field private callBar:Lcom/weirdvoice/widgets/DialerCallBar;

.field private connection:Landroid/content/ServiceConnection;

.field private dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

.field private dialPad:Lcom/weirdvoice/widgets/Dialpad;

.field private dialerLayout:Lcom/weirdvoice/ui/dialpad/DialerLayout;

.field private digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

.field private digitsBackground:Landroid/graphics/drawable/Drawable;

.field private digitsEmptyBackground:Landroid/graphics/drawable/Drawable;

.field private ima_fav:Landroid/widget/ImageView;

.field private ima_flag:Landroid/widget/ImageView;

.field private initText:Ljava/lang/String;

.field private isAmInternationalPhoneNo:Z

.field private isDigit:Ljava/lang/Boolean;

.field private isFlagSet:Ljava/lang/Boolean;

.field private keyboardActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mDualPane:Z

.field private missingVoicemailDialog:Landroid/app/AlertDialog;

.field private prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

.field private rewriteTextInfo:Landroid/widget/TextView;

.field private service:Lcom/weirdvoice/api/ISipService;

.field final telNumFormatter:Lcom/weirdvoice/toolbox/TelNumFormatter;

.field private udb:Lcom/weirdvoice/toolbox/UpdateDB;

.field private wallet:Landroid/widget/Button;

.field private warnTxt:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 133
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_num:[Ljava/lang/String;

    .line 134
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_typ:[Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    sput v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    .line 136
    const-string v0, ""

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->contactName:Ljava/lang/String;

    .line 139
    sput-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    .line 140
    sput-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    .line 143
    sput-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countries:[[Ljava/lang/String;

    .line 144
    sput-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countryAreaCode:[[Ljava/lang/String;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/country"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->COUNTRY_URI_S:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/countryareacode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->COUNTRYAREACODE_URI_S:Ljava/lang/String;

    .line 1419
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 141
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isFlagSet:Ljava/lang/Boolean;

    .line 142
    iput-boolean v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isAmInternationalPhoneNo:Z

    .line 151
    new-instance v0, Lcom/weirdvoice/toolbox/TelNumFormatter;

    invoke-direct {v0}, Lcom/weirdvoice/toolbox/TelNumFormatter;-><init>()V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->telNumFormatter:Lcom/weirdvoice/toolbox/TelNumFormatter;

    .line 156
    iput-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->initText:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    .line 171
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 172
    const v1, 0x7f0b009e

    aput v1, v0, v2

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->buttonsToAttach:[I

    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 176
    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->buttonsToLongAttach:[I

    .line 182
    new-instance v0, Lcom/weirdvoice/ui/dialpad/DialerFragment$1;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$1;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->connection:Landroid/content/ServiceConnection;

    .line 594
    new-instance v0, Lcom/weirdvoice/ui/dialpad/DialerFragment$2;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$2;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->keyboardActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 605
    new-instance v0, Lcom/weirdvoice/ui/dialpad/DialerFragment$3;

    invoke-direct {v0, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$3;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountButtonChangeListener:Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

    .line 127
    return-void

    .line 175
    :array_0
    .array-data 4
        0x7f0b00ae
        0x7f0b00a4
        0x7f0b009e
    .end array-data
.end method

.method static synthetic access$0(Lcom/weirdvoice/ui/dialpad/DialerFragment;Lcom/weirdvoice/api/ISipService;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->service:Lcom/weirdvoice/api/ISipService;

    return-void
.end method

.method static synthetic access$1(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V
    .locals 0

    .prologue
    .line 1485
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->applyRewritingInfo()V

    return-void
.end method

.method static synthetic access$3(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->wallet:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Lcom/actionbarsherlock/view/MenuItem;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$5(Lcom/weirdvoice/ui/dialpad/DialerFragment;Z)V
    .locals 0

    .prologue
    .line 1460
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setRewritingFeature(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Lcom/weirdvoice/ui/dialpad/DigitsEditText;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/weirdvoice/ui/dialpad/DialerFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1074
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->placeCallWithOption(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$8(Lcom/weirdvoice/ui/dialpad/DialerFragment;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private applyRewritingInfo()V
    .locals 3

    .prologue
    .line 1487
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1488
    .local v0, "newText":Ljava/lang/String;
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1489
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1490
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->rewriteTextInfo:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->rewriteNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    :goto_0
    return-void

    .line 1494
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->rewriteTextInfo:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private applyTextToAutoComplete()V
    .locals 3

    .prologue
    .line 779
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->hasAutocompleteList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "filter":Ljava/lang/String;
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v1, v0}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;->setSelectedText(Ljava/lang/String;)V

    .line 787
    .end local v0    # "filter":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->mDualPane:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;

    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;->filter(Ljava/lang/CharSequence;)V

    .line 790
    :cond_1
    return-void
.end method

.method private applyTheme(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/weirdvoice/utils/Theme;->getCurrentTheme(Landroid/content/Context;)Lcom/weirdvoice/utils/Theme;

    move-result-object v3

    .line 469
    .local v3, "t":Lcom/weirdvoice/utils/Theme;
    if-eqz v3, :cond_7

    .line 470
    iget-object v4, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialPad:Lcom/weirdvoice/widgets/Dialpad;

    invoke-virtual {v4, v3}, Lcom/weirdvoice/widgets/Dialpad;->applyTheme(Lcom/weirdvoice/utils/Theme;)V

    .line 474
    const v4, 0x7f0b009e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 475
    .local v2, "subV":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 476
    const-string v4, "btn_dial_delete"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 477
    const-string v4, "btn_dial_delete_margin"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyLayoutMargin(Landroid/view/View;Ljava/lang/String;)V

    .line 478
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "subV":Landroid/view/View;
    const-string v4, "ic_dial_action_delete"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 482
    :cond_0
    const v4, 0x7f0b00b1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 483
    .restart local v2    # "subV":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 484
    const-string v4, "btn_dial_action"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 485
    const-string v4, "btn_dial_action_margin"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyLayoutMargin(Landroid/view/View;Ljava/lang/String;)V

    .line 486
    check-cast v2, Landroid/widget/ImageView;

    .end local v2    # "subV":Landroid/view/View;
    const-string v4, "ic_dial_action_call"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 497
    :cond_1
    const v4, 0x7f0b00b0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 498
    .restart local v2    # "subV":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 499
    const-string v4, "btn_add_action"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 500
    const-string v4, "btn_dial_add_margin"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyLayoutMargin(Landroid/view/View;Ljava/lang/String;)V

    .line 516
    :cond_2
    const v4, 0x7f0b00b3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 517
    if-eqz v2, :cond_3

    .line 518
    const-string v4, "dialpad_background"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 522
    :cond_3
    const v4, 0x7f0b00b4

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 523
    if-eqz v2, :cond_4

    .line 524
    const-string v4, "dialer_callbar_background"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 528
    :cond_4
    const v4, 0x7f0b0098

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 529
    if-eqz v2, :cond_5

    .line 530
    const-string v4, "btn_dial_textfield"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyBackgroundDrawable(Landroid/view/View;Ljava/lang/String;)V

    .line 533
    :cond_5
    const-string v4, "btn_dial_textfield_activated"

    invoke-virtual {v3, v4}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 534
    .local v0, "dAct":Landroid/graphics/drawable/Drawable;
    const-string v4, "btn_dial_textfield_normal"

    invoke-virtual {v3, v4}, Lcom/weirdvoice/utils/Theme;->getDrawableResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 535
    .local v1, "dEmpt":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 536
    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digitsBackground:Landroid/graphics/drawable/Drawable;

    .line 537
    iput-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 538
    iget-object v4, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v4}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 541
    :cond_6
    const v4, 0x7f0b009a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 542
    if-eqz v2, :cond_7

    .line 543
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "subV":Landroid/view/View;
    const-string v4, "textColorPrimary"

    invoke-virtual {v3, v2, v4}, Lcom/weirdvoice/utils/Theme;->applyTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 549
    .end local v0    # "dAct":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dEmpt":Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-object v4, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->callBar:Lcom/weirdvoice/widgets/DialerCallBar;

    if-eqz v4, :cond_8

    .line 550
    iget-object v4, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->callBar:Lcom/weirdvoice/widgets/DialerCallBar;

    invoke-static {v4}, Lcom/weirdvoice/utils/Theme;->fixRepeatableBackground(Landroid/view/View;)V

    .line 552
    :cond_8
    return-void
.end method

.method private attachButtonListener(Landroid/view/View;IZ)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "longAttach"    # Z

    .prologue
    .line 618
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 619
    .local v0, "button":Landroid/widget/ImageButton;
    if-nez v0, :cond_0

    .line 620
    const-string v1, "DialerFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not found button "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :goto_0
    return-void

    .line 623
    :cond_0
    if-eqz p3, :cond_1

    .line 624
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 626
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private doDial(Ljava/lang/String;)V
    .locals 13
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1157
    const-string v0, "011"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    const-string v0, "011"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1159
    :cond_0
    const-string v0, "DialerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calling "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v0, "DialerFragment"

    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isFlagSet:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isFlagSet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1163
    const-string v0, "DialerFragment"

    const-string v1, "malformed"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :try_start_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countryAreaCode:[[Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/weirdvoice/toolbox/Dialing;->correctDialedNumber(Landroid/content/Context;Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1166
    .local v12, "newNum":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 1167
    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1168
    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1169
    .local v10, "dialMsg":Ljava/lang/String;
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->telNumFormatter:Lcom/weirdvoice/toolbox/TelNumFormatter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countries:[[Ljava/lang/String;

    sget-object v3, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countryAreaCode:[[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v12}, Lcom/weirdvoice/toolbox/TelNumFormatter;->getCountryISO(Landroid/content/Context;[[Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1170
    .local v11, "newCtry":Ljava/lang/String;
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    const-string v1, "country"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "ISOCode=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/weirdvoice/toolbox/UpdateDB;->getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1172
    .local v9, "ctryName":Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1175
    :cond_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1176
    .local v7, "aDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1177
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1178
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1179
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1180
    const v0, 0x7f0c0083

    new-instance v1, Lcom/weirdvoice/ui/dialpad/DialerFragment$9;

    invoke-direct {v1, p0, v12}, Lcom/weirdvoice/ui/dialpad/DialerFragment$9;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1187
    const v0, 0x7f0c01f1

    new-instance v1, Lcom/weirdvoice/ui/dialpad/DialerFragment$10;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$10;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1193
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1244
    .end local v7    # "aDialog":Landroid/app/AlertDialog$Builder;
    .end local v9    # "ctryName":Ljava/lang/String;
    .end local v10    # "dialMsg":Ljava/lang/String;
    .end local v11    # "newCtry":Ljava/lang/String;
    .end local v12    # "newNum":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1195
    .restart local v12    # "newNum":Ljava/lang/String;
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 1196
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1197
    .restart local v7    # "aDialog":Landroid/app/AlertDialog$Builder;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1198
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1199
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1200
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1201
    const v0, 0x7f0c0083

    new-instance v1, Lcom/weirdvoice/ui/dialpad/DialerFragment$11;

    invoke-direct {v1, p0, v12}, Lcom/weirdvoice/ui/dialpad/DialerFragment$11;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1208
    const v0, 0x7f0c0207

    new-instance v1, Lcom/weirdvoice/ui/dialpad/DialerFragment$12;

    invoke-direct {v1, p0, v12}, Lcom/weirdvoice/ui/dialpad/DialerFragment$12;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1215
    const v0, 0x7f0c01f1

    new-instance v1, Lcom/weirdvoice/ui/dialpad/DialerFragment$13;

    invoke-direct {v1, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$13;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1221
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1229
    .end local v7    # "aDialog":Landroid/app/AlertDialog$Builder;
    .end local v12    # "newNum":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1223
    .restart local v12    # "newNum":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v0, v12}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->placeCallWithOption(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1228
    :cond_5
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0258

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1232
    .end local v12    # "newNum":Ljava/lang/String;
    :cond_6
    new-instance v0, Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    .line 1234
    :try_start_1
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countryAreaCode:[[Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/weirdvoice/toolbox/UpdateDB;->getCountryAreaCode([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1235
    .local v8, "ctryCode":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/weirdvoice/toolbox/Dialing;->isZeroNationalOnly(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1236
    invoke-static {p1, v8}, Lcom/weirdvoice/toolbox/Dialing;->removeExtraZeros(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1237
    :cond_7
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1238
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v0, p1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->placeCallWithOption(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1241
    .end local v8    # "ctryCode":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private hasAutocompleteList()Z
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    const/4 v0, 0x1

    .line 971
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialerLayout:Lcom/weirdvoice/ui/dialpad/DialerLayout;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->canShowList()Z

    move-result v0

    goto :goto_0
.end method

.method private initButtons(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 632
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->buttonsToAttach:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    .line 636
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->buttonsToLongAttach:[I

    array-length v4, v3

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_1

    .line 641
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 642
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 643
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setCursorVisible(Z)V

    .line 644
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setLongClickable(Z)V

    .line 645
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setClickable(Z)V

    .line 646
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, v2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setFocusable(Z)V

    .line 647
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 648
    return-void

    .line 632
    :cond_0
    aget v0, v3, v1

    .line 633
    .local v0, "buttonId":I
    invoke-direct {p0, p1, v0, v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->attachButtonListener(Landroid/view/View;IZ)V

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v0    # "buttonId":I
    :cond_1
    aget v0, v3, v1

    .line 637
    .restart local v0    # "buttonId":I
    const/4 v5, 0x1

    invoke-direct {p0, p1, v0, v5}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->attachButtonListener(Landroid/view/View;IZ)V

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private keyPressed(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 653
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 654
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p1, v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 655
    return-void
.end method

.method private loadCountriesAndAreacodes()V
    .locals 12

    .prologue
    .line 436
    const-string v0, "DialerFragment"

    const-string v3, "loadCountriesAndAreacodes"

    invoke-static {v0, v3}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    .line 441
    :try_start_0
    sget-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->COUNTRY_URI_S:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 442
    .local v1, "countryUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "uid"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "ISOCode"

    aput-object v3, v2, v0

    .line 443
    .local v2, "ctrColumns":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "uid"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 445
    .local v10, "ctrCurs":Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "uid"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-virtual {v0, v10, v2}, Lcom/weirdvoice/toolbox/UpdateDB;->getDataFromCursor(Landroid/database/Cursor;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countries:[[Ljava/lang/String;

    .line 452
    sget-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->COUNTRYAREACODE_URI_S:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 453
    .local v4, "countryareacodeUri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "country_uid"

    aput-object v3, v5, v0

    const/4 v0, 0x1

    const-string v3, "completeAreaCode"

    aput-object v3, v5, v0

    .line 454
    .local v5, "ctrAreaColumns":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "completeAreaCode Desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 456
    .local v9, "ctrAreaCurs":Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "completeAreaCode Desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-virtual {v0, v9, v5}, Lcom/weirdvoice/toolbox/UpdateDB;->getDataFromCursor(Landroid/database/Cursor;[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countryAreaCode:[[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    .end local v1    # "countryUri":Landroid/net/Uri;
    .end local v2    # "ctrColumns":[Ljava/lang/String;
    .end local v4    # "countryareacodeUri":Landroid/net/Uri;
    .end local v5    # "ctrAreaColumns":[Ljava/lang/String;
    .end local v9    # "ctrAreaCurs":Landroid/database/Cursor;
    .end local v10    # "ctrCurs":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v11

    .line 462
    .local v11, "e":Ljava/lang/Exception;
    const-string v0, "DialerFragment"

    const-string v3, "exception while loading countries"

    invoke-static {v0, v3}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private placeCallWithOption(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 1075
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->service:Lcom/weirdvoice/api/ISipService;

    if-nez v13, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    const-string v10, ""

    .line 1079
    .local v10, "toCall":Ljava/lang/String;
    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1081
    .local v4, "accountToUse":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v13}, Lcom/weirdvoice/widgets/AccountChooserButton;->getSelectedAccount()Lcom/weirdvoice/api/SipProfile;

    move-result-object v2

    .line 1082
    .local v2, "acc":Lcom/weirdvoice/api/SipProfile;
    if-eqz v2, :cond_0

    .line 1086
    iget-wide v14, v2, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1088
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v13}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1089
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1090
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1093
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v13}, Lcom/actionbarsherlock/view/MenuItem;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1094
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->rewriteNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1097
    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1102
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_7

    .line 1109
    const-string v13, "DialerFragment"

    const-string v14, "sip acct"

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    :try_start_0
    const-string v13, "DialerFragment"

    const-string v14, "svc makecall"

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1115
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const-string v13, "username"

    const-string v14, ""

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1116
    .local v11, "username":Ljava/lang/String;
    const-string v13, "accregistered"

    const-string v14, ""

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1117
    .local v3, "accReg":Ljava/lang/String;
    const-string v13, "noreg"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1118
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const v14, 0x7f0c000f

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 1139
    :goto_1
    const-string v13, "DialerFragment"

    const-string v14, "svc makecall done"

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1141
    .end local v3    # "accReg":Ljava/lang/String;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v11    # "username":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1142
    .local v5, "e":Landroid/os/RemoteException;
    const-string v13, "DialerFragment"

    const-string v14, "Service can\'t be called to make the call"

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1120
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v3    # "accReg":Ljava/lang/String;
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    .restart local v11    # "username":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x7

    if-le v13, v14, :cond_6

    .line 1121
    move-object v7, v10

    .line 1122
    .local v7, "lastdial":Ljava/lang/String;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 1123
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "lastdialed"

    invoke-interface {v6, v13, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1124
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1126
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1128
    .local v8, "myToCall":Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isWeirdApp()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1129
    const-string v13, "voiceopt"

    const v14, 0x3f8ccccd    # 1.1f

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    .line 1130
    .local v12, "voicePrefs":Ljava/lang/Float;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1133
    .end local v12    # "voicePrefs":Ljava/lang/Float;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->service:Lcom/weirdvoice/api/ISipService;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v13, v8, v14, v0}, Lcom/weirdvoice/api/ISipService;->makeCallWithOptions(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v13}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->clear()V

    goto :goto_1

    .line 1137
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "lastdial":Ljava/lang/String;
    .end local v8    # "myToCall":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const v14, 0x7f0c0258

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1144
    .end local v3    # "accReg":Ljava/lang/String;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    .end local v11    # "username":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    goto/16 :goto_0
.end method

.method private rewriteNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1470
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v3}, Lcom/weirdvoice/widgets/AccountChooserButton;->getSelectedAccount()Lcom/weirdvoice/api/SipProfile;

    move-result-object v0

    .line 1471
    .local v0, "acc":Lcom/weirdvoice/api/SipProfile;
    if-nez v0, :cond_0

    .line 1482
    .end local p1    # "number":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1474
    .restart local p1    # "number":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-wide v4, v0, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v3, v4, v5, p1}, Lcom/weirdvoice/models/Filter;->rewritePhoneNumber(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1475
    .local v2, "numberRewrite":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1476
    const-string p1, ""

    goto :goto_0

    .line 1478
    :cond_1
    invoke-virtual {v0, v2}, Lcom/weirdvoice/api/SipProfile;->formatCalleeNumber(Ljava/lang/String;)Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;

    move-result-object v1

    .line 1479
    .local v1, "finalCallee":Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;
    iget-object v3, v1, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->displayName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1480
    invoke-virtual {v1}, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1482
    :cond_2
    invoke-virtual {v1}, Lcom/weirdvoice/api/SipUri$ParsedSipContactInfos;->getReadableSipUri()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private setRewritingFeature(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setChecked(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1462
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->rewriteTextInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1463
    if-eqz p1, :cond_0

    .line 1464
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->applyRewritingInfo()V

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    const-string v1, "rewrite_rules_dialer"

    invoke-virtual {v0, v1, p1}, Lcom/weirdvoice/utils/PreferencesWrapper;->setPreferenceBooleanValue(Ljava/lang/String;Z)V

    .line 1467
    return-void

    .line 1462
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 13
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    .line 723
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    .line 725
    .local v10, "notEmpty":Z
    :goto_0
    invoke-static {}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->getInstance()Lcom/actionbarsherlock/internal/utils/UtilityWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    if-eqz v10, :cond_6

    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digitsBackground:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/actionbarsherlock/internal/utils/UtilityWrapper;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 726
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->callBar:Lcom/weirdvoice/widgets/DialerCallBar;

    invoke-virtual {v0, v10}, Lcom/weirdvoice/widgets/DialerCallBar;->setEnabled(Z)V

    .line 728
    if-nez v10, :cond_0

    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setCursorVisible(Z)V

    .line 733
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v11

    .line 734
    .local v11, "number":Ljava/lang/String;
    const-string v0, "011"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    const-string v0, "011"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 736
    :cond_1
    const-string v0, "+"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    const-string v0, "+"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->telNumFormatter:Lcom/weirdvoice/toolbox/TelNumFormatter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countries:[[Ljava/lang/String;

    sget-object v3, Lcom/weirdvoice/ui/dialpad/DialerFragment;->countryAreaCode:[[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/weirdvoice/toolbox/TelNumFormatter;->getCountryISO(Landroid/content/Context;[[Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 741
    .local v9, "newcountry":Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 743
    :try_start_1
    const-string v0, "^0+"

    const-string v1, ""

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 744
    .local v12, "numtmp":Ljava/lang/String;
    const-string v0, "7"

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 745
    const-string v9, "ru"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 750
    .end local v12    # "numtmp":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_2
    const-string v0, "DialerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v0, ""

    if-ne v9, v0, :cond_7

    .line 752
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isFlagSet:Ljava/lang/Boolean;

    .line 753
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->ima_flag:Landroid/widget/ImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 754
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->warnTxt:Landroid/widget/TextView;

    const v1, 0x7f0c0258

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->warnTxt:Landroid/widget/TextView;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 773
    .end local v9    # "newcountry":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->applyTextToAutoComplete()V

    .line 774
    return-void

    .line 723
    .end local v10    # "notEmpty":Z
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 725
    .restart local v10    # "notEmpty":Z
    :cond_6
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 757
    .restart local v9    # "newcountry":Ljava/lang/String;
    .restart local v11    # "number":Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isFlagSet:Ljava/lang/Boolean;

    .line 758
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->ima_flag:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "flag_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "48"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "com.weirdvoice"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 759
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    const-string v1, "country"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const-string v3, "ISOCode=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/weirdvoice/toolbox/UpdateDB;->getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 760
    .local v7, "ctryName":Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 761
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->warnTxt:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->warnTxt:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 765
    .end local v7    # "ctryName":Ljava/lang/String;
    .end local v9    # "newcountry":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 766
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "DialerFragment"

    const-string v1, "can\'t figure out country"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isFlagSet:Ljava/lang/Boolean;

    .line 768
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->ima_flag:Landroid/widget/ImageView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 769
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->warnTxt:Landroid/widget/TextView;

    const v1, 0x7f0c0258

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->warnTxt:Landroid/widget/TextView;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 747
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "newcountry":Ljava/lang/String;
    .restart local v11    # "number":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 999
    return-void
.end method

.method public buyCredit()V
    .locals 12

    .prologue
    const v11, 0x7f0c0268

    const/4 v10, 0x1

    .line 1379
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1380
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "accregistered"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    .local v0, "accReg":Ljava/lang/String;
    const-string v8, "username"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1382
    .local v5, "username":Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1383
    const-string v8, "DialerFragment"

    const-string v9, "empty u"

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1411
    :goto_0
    return-void

    .line 1386
    :cond_0
    const-string v8, "noreg"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1387
    const-string v8, "DialerFragment"

    const-string v9, "noreg"

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1389
    :cond_1
    const-string v8, "reg"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1390
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->getBuyUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1392
    .local v4, "url":Ljava/lang/String;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isSamApp()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1393
    const/4 v6, 0x0

    .line 1394
    .local v6, "version":I
    const-string v7, ""

    .line 1396
    .local v7, "zename":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1397
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 1398
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->appname()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1400
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&v="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1403
    .end local v6    # "version":I
    .end local v7    # "zename":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1404
    .local v1, "i":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1405
    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1407
    .end local v1    # "i":Landroid/content/Intent;
    .end local v4    # "url":Ljava/lang/String;
    :cond_3
    const-string v8, "DialerFragment"

    const-string v9, "not sure reg"

    invoke-static {v8, v9}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f0c025e

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1399
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v6    # "version":I
    .restart local v7    # "zename":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public dialLast()V
    .locals 4

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1061
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "lastdialed"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, "lastdial":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    .line 1063
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v2, v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1065
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 795
    const/16 v1, 0xc7

    move/from16 v0, p1

    if-ne v0, v1, :cond_1

    .line 796
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_1

    .line 797
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 798
    .local v2, "contactData":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 799
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 800
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 802
    .local v12, "n":Ljava/lang/String;
    const-string v1, "display_name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 804
    .local v10, "cn":Ljava/lang/String;
    const-string v1, "DialerFragment"

    invoke-static {v1, v12}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v1, 0x0

    sput v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    .line 806
    sput-object v10, Lcom/weirdvoice/ui/dialpad/DialerFragment;->contactName:Ljava/lang/String;

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 809
    .local v3, "cr":Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 811
    .local v14, "phones":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "contact_id = ? "

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v12, v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 816
    :goto_0
    if-eqz v14, :cond_0

    .line 817
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 841
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 844
    :cond_0
    sget v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    if-nez v1, :cond_3

    .line 845
    const-string v1, "DialerFragment"

    const-string v4, "no number"

    invoke-static {v1, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .end local v2    # "contactData":Landroid/net/Uri;
    .end local v3    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "cn":Ljava/lang/String;
    .end local v12    # "n":Ljava/lang/String;
    .end local v14    # "phones":Landroid/database/Cursor;
    :cond_1
    :goto_2
    return-void

    .line 813
    .restart local v2    # "contactData":Landroid/net/Uri;
    .restart local v3    # "cr":Landroid/content/ContentResolver;
    .restart local v9    # "c":Landroid/database/Cursor;
    .restart local v10    # "cn":Ljava/lang/String;
    .restart local v12    # "n":Ljava/lang/String;
    .restart local v14    # "phones":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 814
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "DialerFragment"

    const-string v4, "Exception while getting contact phone number"

    invoke-static {v1, v4, v11}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 818
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v1, "data1"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 819
    .local v13, "number":Ljava/lang/String;
    const-string v1, "DialerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v1, "data2"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 821
    .local v17, "type":I
    packed-switch v17, :pswitch_data_0

    .line 835
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_num:[Ljava/lang/String;

    sget v4, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    aput-object v13, v1, v4

    .line 836
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_typ:[Ljava/lang/String;

    sget v4, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0266

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 837
    :goto_3
    sget v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    add-int/lit8 v1, v1, 0x1

    .line 839
    sput v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    goto :goto_1

    .line 823
    :pswitch_0
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_num:[Ljava/lang/String;

    sget v4, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    aput-object v13, v1, v4

    .line 824
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_typ:[Ljava/lang/String;

    sget v4, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0264

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_3

    .line 827
    :pswitch_1
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_num:[Ljava/lang/String;

    sget v4, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    aput-object v13, v1, v4

    .line 828
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_typ:[Ljava/lang/String;

    sget v4, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0208

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_3

    .line 831
    :pswitch_2
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_num:[Ljava/lang/String;

    sget v4, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    aput-object v13, v1, v4

    .line 832
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_typ:[Ljava/lang/String;

    sget v4, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0265

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_3

    .line 846
    .end local v13    # "number":Ljava/lang/String;
    .end local v17    # "type":I
    :cond_3
    sget v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 847
    const-string v1, "DialerFragment"

    const-string v4, "only 1 number"

    invoke-static {v1, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_num:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-static {v1}, Lcom/weirdvoice/toolbox/TelNumFormatter;->sanitizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 849
    .local v16, "sanitized":Ljava/lang/String;
    move-object/from16 v15, v16

    .line 850
    .local v15, "picked":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 851
    const-string v1, "DialerFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "picked "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, v15}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 853
    const/4 v15, 0x0

    .line 854
    goto/16 :goto_2

    .line 855
    :cond_4
    const-string v1, "DialerFragment"

    const-string v4, "no predialing, no picked"

    invoke-static {v1, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    const-string v4, ""

    invoke-virtual {v1, v4}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 859
    .end local v15    # "picked":Ljava/lang/String;
    .end local v16    # "sanitized":Ljava/lang/String;
    :cond_5
    const-string v1, "DialerFragment"

    const-string v4, "more than 1 number"

    invoke-static {v1, v4}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->but_ctcbook:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->but_ctcbook:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->showContextMenu()Z

    goto/16 :goto_2

    .line 821
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 556
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.weirdvoice.service.SipService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 559
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->connection:Landroid/content/ServiceConnection;

    .line 561
    const/4 v3, 0x1

    .line 560
    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 563
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    if-nez v1, :cond_0

    .line 564
    new-instance v1, Lcom/weirdvoice/utils/PreferencesWrapper;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    if-nez v1, :cond_1

    .line 567
    new-instance v1, Lcom/weirdvoice/utils/DialingFeedback;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/weirdvoice/utils/DialingFeedback;-><init>(Landroid/app/Activity;Z)V

    iput-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/DialingFeedback;->resume()V

    .line 572
    return-void
.end method

.method public onAutoCompleteListVisibiltyChanged()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->applyTextToAutoComplete()V

    .line 225
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    .line 694
    .local v3, "viewId":I
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 695
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "lastdialed"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, "lastdial":Ljava/lang/String;
    iget-object v4, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v4}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, "sdispl":Ljava/lang/String;
    const v4, 0x7f0b009e

    if-ne v3, v4, :cond_0

    .line 698
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-le v4, v5, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 699
    iget-object v4, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    const/16 v4, 0x43

    invoke-direct {p0, v4}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->keyPressed(I)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 15
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 871
    const-string v0, "DialerFragment"

    const-string v1, "onContextItemSelected()"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    sget v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    if-lt v9, v0, :cond_0

    .line 908
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 873
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    add-int/lit16 v1, v9, 0x1b58

    if-ne v0, v1, :cond_7

    .line 874
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 875
    .local v12, "sp":Landroid/content/SharedPreferences;
    const-string v0, "isoctry"

    const-string v1, ""

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 876
    .local v13, "userCtryIso":Ljava/lang/String;
    sget-object v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_num:[Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    add-int/lit16 v1, v1, -0x1b58

    aget-object v7, v0, v1

    .line 877
    .local v7, "ctcNum":Ljava/lang/String;
    invoke-static {v7}, Lcom/weirdvoice/toolbox/TelNumFormatter;->sanitizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 879
    .local v11, "sanitized":Ljava/lang/String;
    const-string v0, "+"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CA"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "US"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 880
    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 881
    const-string v0, "1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "011"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 882
    :cond_2
    const-string v0, "DialerFragment"

    const-string v1, "1 was not added to the number"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :cond_3
    :goto_2
    move-object v10, v11

    .line 896
    .local v10, "picked":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 897
    const-string v0, "DialerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "picked "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v0, v10}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 899
    const/4 v10, 0x0

    .line 900
    goto :goto_1

    .line 885
    .end local v10    # "picked":Ljava/lang/String;
    :cond_4
    :try_start_0
    new-instance v0, Lcom/weirdvoice/toolbox/UpdateDB;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/weirdvoice/toolbox/UpdateDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    .line 886
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->udb:Lcom/weirdvoice/toolbox/UpdateDB;

    const-string v1, "countryareacode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "areaCode"

    aput-object v4, v2, v3

    const-string v3, "areaCode=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v14, 0x3

    invoke-virtual {v11, v6, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/weirdvoice/toolbox/UpdateDB;->getFieldValue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 888
    goto :goto_2

    .line 889
    :cond_5
    const-string v0, "DialerFragment"

    const-string v1, "adding 1 to the number would not help"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 890
    :catch_0
    move-exception v8

    .line 891
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "DialerFragment"

    const-string v1, "exception while validating the number"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 901
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "picked":Ljava/lang/String;
    :cond_6
    const-string v0, "DialerFragment"

    const-string v1, "no predialing, no picked"

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 872
    .end local v7    # "ctcNum":Ljava/lang/String;
    .end local v10    # "picked":Ljava/lang/String;
    .end local v11    # "sanitized":Ljava/lang/String;
    .end local v12    # "sp":Landroid/content/SharedPreferences;
    .end local v13    # "userCtryIso":Ljava/lang/String;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 229
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->mDualPane:Z

    .line 233
    new-instance v0, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    .line 234
    new-instance v0, Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;

    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-direct {v0, p0, v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;)V

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteListItemListener:Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;

    .line 236
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    const-string v2, "start_with_text_dialer"

    invoke-virtual {v0, v2}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->loadCountriesAndAreacodes()V

    .line 242
    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setHasOptionsMenu(Z)V

    .line 243
    return-void

    :cond_1
    move v0, v1

    .line 237
    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 913
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 914
    const-string v1, "DialerFragment"

    const-string v2, "onCreateContextMenu()"

    invoke-static {v1, v2}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    sget-object v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->contactName:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 916
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/weirdvoice/ui/dialpad/DialerFragment;->nbPhones:I

    if-lt v0, v1, :cond_0

    .line 919
    return-void

    .line 917
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    add-int/lit16 v3, v0, 0x1b58

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_typ:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/weirdvoice/ui/dialpad/DialerFragment;->phonelist_num:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 1013
    invoke-super {p0, p1, p2}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    .line 1027
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 248
    const v3, 0x7f03002e

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 250
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 251
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x7f02004f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digitsBackground:Landroid/graphics/drawable/Drawable;

    .line 252
    const v3, 0x7f020050

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digitsEmptyBackground:Landroid/graphics/drawable/Drawable;

    .line 254
    const v3, 0x7f0b00a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 255
    .local v0, "llWeird":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/weirdvoice/utils/CustomDistribution;->isWeirdApp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    :goto_0
    const v3, 0x7f0b009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    .line 264
    const v3, 0x7f0b00b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/weirdvoice/widgets/Dialpad;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialPad:Lcom/weirdvoice/widgets/Dialpad;

    .line 265
    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/weirdvoice/widgets/DialerCallBar;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->callBar:Lcom/weirdvoice/widgets/DialerCallBar;

    .line 266
    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    .line 267
    const v3, 0x7f0b009d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->rewriteTextInfo:Landroid/widget/TextView;

    .line 269
    const v3, 0x7f0b00b0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->wallet:Landroid/widget/Button;

    .line 270
    const v3, 0x7f0b0099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->but_ctcbook:Landroid/widget/ImageButton;

    .line 271
    const v3, 0x7f0b00a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->but_weird:Landroid/widget/ImageButton;

    .line 272
    const v3, 0x7f0b009c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->warnTxt:Landroid/widget/TextView;

    .line 273
    const v3, 0x7f0b00a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->ima_flag:Landroid/widget/ImageView;

    .line 274
    const v3, 0x7f0b009f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->ima_fav:Landroid/widget/ImageView;

    .line 276
    const v3, 0x7f0b0084

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/weirdvoice/widgets/AccountChooserButton;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    .line 278
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    const v6, 0x7f0c0239

    invoke-virtual {v3, v6}, Lcom/weirdvoice/widgets/AccountChooserButton;->addExtraMenuItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 279
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v3, v5}, Lcom/actionbarsherlock/view/MenuItem;->setCheckable(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 280
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserFilterItem:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v6, Lcom/weirdvoice/ui/dialpad/DialerFragment$4;

    invoke-direct {v6, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$4;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-interface {v3, v6}, Lcom/actionbarsherlock/view/MenuItem;->setOnMenuItemClickListener(Lcom/actionbarsherlock/view/MenuItem$OnMenuItemClickListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 287
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    const-string v6, "rewrite_rules_dialer"

    invoke-virtual {v3, v6}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setRewritingFeature(Z)V

    .line 289
    const v3, 0x7f0b0097

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/weirdvoice/ui/dialpad/DialerLayout;

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialerLayout:Lcom/weirdvoice/ui/dialpad/DialerLayout;

    .line 295
    if-eqz p3, :cond_0

    .line 296
    const-string v3, "text_mode"

    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p3, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->keyboardActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v6}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 302
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialerLayout:Lcom/weirdvoice/ui/dialpad/DialerLayout;

    iget-boolean v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->mDualPane:Z

    invoke-virtual {v3, v6}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->setForceNoList(Z)V

    .line 303
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialerLayout:Lcom/weirdvoice/ui/dialpad/DialerLayout;

    invoke-virtual {v3, p0}, Lcom/weirdvoice/ui/dialpad/DialerLayout;->setAutoCompleteListVisibiltyChangedListener(Lcom/weirdvoice/ui/dialpad/DialerLayout$OnAutoCompleteListVisibilityChangedListener;)V

    .line 306
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v3, v5}, Lcom/weirdvoice/widgets/AccountChooserButton;->setShowExternals(Z)V

    .line 307
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountButtonChangeListener:Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;

    invoke-virtual {v3, v6}, Lcom/weirdvoice/widgets/AccountChooserButton;->setOnAccountChangeListener(Lcom/weirdvoice/widgets/AccountChooserButton$OnAccountChangeListener;)V

    .line 310
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialPad:Lcom/weirdvoice/widgets/Dialpad;

    invoke-virtual {v3, p0}, Lcom/weirdvoice/widgets/Dialpad;->setOnDialKeyListener(Lcom/weirdvoice/widgets/Dialpad$OnDialKeyListener;)V

    .line 313
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteAdapter:Lcom/weirdvoice/utils/contacts/ContactsSearchAdapter;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteListItemListener:Lcom/weirdvoice/ui/dialpad/DialerFragment$OnAutoCompleteListItemClicked;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 315
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 318
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->callBar:Lcom/weirdvoice/widgets/DialerCallBar;

    invoke-virtual {v3, p0}, Lcom/weirdvoice/widgets/DialerCallBar;->setOnDialActionListener(Lcom/weirdvoice/widgets/DialerCallBar$OnDialActionListener;)V

    .line 319
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->callBar:Lcom/weirdvoice/widgets/DialerCallBar;

    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    const-string v7, "use_video"

    invoke-virtual {v6, v7}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/weirdvoice/widgets/DialerCallBar;->setVideoEnabled(Z)V

    .line 324
    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->initButtons(Landroid/view/View;)V

    .line 326
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {p0, v3, v5}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setTextDialing(ZZ)V

    .line 327
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->initText:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    iget-object v4, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->initText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->initText:Ljava/lang/String;

    .line 334
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->but_ctcbook:Landroid/widget/ImageButton;

    new-instance v4, Lcom/weirdvoice/ui/dialpad/DialerFragment$5;

    invoke-direct {v4, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$5;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 346
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->but_weird:Landroid/widget/ImageButton;

    new-instance v4, Lcom/weirdvoice/ui/dialpad/DialerFragment$6;

    invoke-direct {v4, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$6;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 357
    :goto_3
    :try_start_2
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->ima_flag:Landroid/widget/ImageView;

    new-instance v4, Lcom/weirdvoice/ui/dialpad/DialerFragment$7;

    invoke-direct {v4, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$7;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 370
    :goto_4
    :try_start_3
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->ima_fav:Landroid/widget/ImageView;

    new-instance v4, Lcom/weirdvoice/ui/dialpad/DialerFragment$8;

    invoke-direct {v4, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$8;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 380
    :goto_5
    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->applyTheme(Landroid/view/View;)V

    .line 381
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 382
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->applyTextToAutoComplete()V

    .line 383
    return-object v2

    .line 258
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 326
    goto :goto_1

    .line 377
    :catch_0
    move-exception v3

    goto :goto_5

    .line 366
    :catch_1
    move-exception v3

    goto :goto_4

    .line 353
    :catch_2
    move-exception v3

    goto :goto_3

    .line 342
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 577
    :try_start_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-virtual {v1}, Lcom/weirdvoice/utils/DialingFeedback;->pause()V

    .line 583
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 584
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DialerFragment"

    const-string v2, "Unable to un bind"

    invoke-static {v1, v2, v0}, Lcom/weirdvoice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    .line 1453
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1455
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p2, v0}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 710
    .local v0, "vId":I
    const v2, 0x7f0b00ae

    if-ne v0, v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-virtual {v2}, Lcom/weirdvoice/utils/DialingFeedback;->hapticFeedback()V

    .line 712
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->keyPressed(I)V

    .line 718
    :goto_0
    return v1

    .line 714
    :cond_0
    const v2, 0x7f0b009e

    if-ne v0, v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 718
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 388
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 389
    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->callBar:Lcom/weirdvoice/widgets/DialerCallBar;

    if-eqz v6, :cond_0

    .line 390
    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->callBar:Lcom/weirdvoice/widgets/DialerCallBar;

    iget-object v7, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->prefsWrapper:Lcom/weirdvoice/utils/PreferencesWrapper;

    const-string v8, "use_video"

    invoke-virtual {v7, v8}, Lcom/weirdvoice/utils/PreferencesWrapper;->getPreferenceBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/weirdvoice/widgets/DialerCallBar;->setVideoEnabled(Z)V

    .line 393
    :cond_0
    sget-object v6, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 394
    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v6}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 395
    .local v2, "lenText":I
    const/4 v6, 0x5

    if-ge v2, v6, :cond_3

    .line 396
    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 397
    sget-object v6, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    sput-object v6, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    .line 398
    sput-object v10, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    .line 414
    .end local v2    # "lenText":I
    :cond_1
    :goto_0
    sget-object v6, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 415
    const-string v6, "DialerFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "predialing "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    sget-object v7, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->append(Ljava/lang/CharSequence;)V

    .line 417
    sput-object v10, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    .line 420
    :cond_2
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 421
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "username"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, "username":Ljava/lang/String;
    const-string v6, "deviceid"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "devId":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 425
    new-instance v6, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;

    invoke-direct {v6, p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    new-array v7, v9, [Ljava/lang/String;

    aput-object v5, v7, v11

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/dialpad/DialerFragment$GetBalTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 433
    :goto_1
    return-void

    .line 399
    .end local v0    # "devId":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "username":Ljava/lang/String;
    .restart local v2    # "lenText":I
    :cond_3
    const/4 v6, 0x4

    if-le v2, v6, :cond_1

    .line 400
    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v6}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "number":Ljava/lang/String;
    iget-object v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-boolean v6, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isAmInternationalPhoneNo:Z

    if-eqz v6, :cond_5

    .line 403
    iput-boolean v11, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isAmInternationalPhoneNo:Z

    .line 404
    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    .line 405
    sget-object v6, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    sget-object v7, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 406
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    .line 409
    :cond_4
    :goto_2
    sput-object v10, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    goto/16 :goto_0

    .line 408
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/weirdvoice/ui/dialpad/DialerFragment;->selectedCountryCode:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/weirdvoice/ui/dialpad/DialerFragment;->predial:Ljava/lang/String;

    goto :goto_2

    .line 427
    .end local v2    # "lenText":I
    .end local v3    # "number":Ljava/lang/String;
    .restart local v0    # "devId":Ljava/lang/String;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    .restart local v5    # "username":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 428
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "accregistered"

    const-string v7, "noreg"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0c000f

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 590
    const-string v0, "text_mode"

    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 592
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->afterTextChanged(Landroid/text/Editable;)V

    .line 1004
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "newText":Ljava/lang/String;
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/weirdvoice/widgets/AccountChooserButton;->setChangeable(Z)V

    .line 1007
    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->applyRewritingInfo()V

    .line 1008
    return-void
.end method

.method public onTrigger(II)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "dialTone"    # I

    .prologue
    .line 992
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialFeedback:Lcom/weirdvoice/utils/DialingFeedback;

    invoke-virtual {v0, p2}, Lcom/weirdvoice/utils/DialingFeedback;->giveFeedback(I)V

    .line 993
    invoke-direct {p0, p1}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->keyPressed(I)V

    .line 994
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 1423
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1426
    new-instance v2, Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;

    invoke-direct {v2}, Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;-><init>()V

    iput-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;

    .line 1428
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    if-eqz v2, :cond_0

    .line 1429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1430
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "constraint"

    .line 1431
    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v3}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1430
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1433
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;

    invoke-virtual {v2, v0}, Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1442
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1443
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0b007c

    iget-object v3, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteFragment:Lcom/weirdvoice/ui/dialpad/DialerAutocompleteDetailsFragment;

    const-string v4, "autocomplete_dial_side_frag"

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1444
    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 1445
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1449
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    return-void
.end method

.method public openHelpMenu()V
    .locals 3

    .prologue
    .line 1415
    invoke-static {}, Lcom/weirdvoice/ui/help/Help;->newInstance()Lcom/weirdvoice/ui/help/Help;

    move-result-object v0

    .line 1416
    .local v0, "newFragment":Landroid/support/v4/app/DialogFragment;
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1417
    return-void
.end method

.method public placeCall()V
    .locals 10

    .prologue
    const v9, 0x7f0c0258

    const/4 v8, 0x7

    const/4 v7, 0x1

    .line 1031
    iget-object v5, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v5}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1033
    .local v4, "toCall":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1035
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1036
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v5, "lastdialed"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "lastdial":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 1038
    iget-object v5, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v5, v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    .end local v1    # "lastdial":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 1040
    .restart local v1    # "lastdial":Ljava/lang/String;
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1044
    .end local v1    # "lastdial":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, ""

    .line 1046
    .local v3, "tmp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 1051
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_5

    .line 1052
    invoke-direct {p0, v3}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->doDial(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x32

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x33

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x34

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x35

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x36

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x37

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x38

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-ne v5, v6, :cond_4

    .line 1048
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1046
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1054
    :cond_5
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public placeVMCall()V
    .locals 19

    .prologue
    .line 1247
    const-wide/16 v14, -0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1248
    .local v3, "accountToUse":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 1249
    .local v2, "acc":Lcom/weirdvoice/api/SipProfile;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->accountChooserButton:Lcom/weirdvoice/widgets/AccountChooserButton;

    invoke-virtual {v13}, Lcom/weirdvoice/widgets/AccountChooserButton;->getSelectedAccount()Lcom/weirdvoice/api/SipProfile;

    move-result-object v2

    .line 1250
    if-nez v2, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-wide v14, v2, Lcom/weirdvoice/api/SipProfile;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1257
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_3

    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    iget-wide v14, v2, Lcom/weirdvoice/api/SipProfile;->id:J

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 1259
    const-string v18, "vm_nbr"

    aput-object v18, v16, v17

    .line 1258
    invoke-static/range {v13 .. v16}, Lcom/weirdvoice/api/SipProfile;->getProfileFromDbId(Landroid/content/Context;J[Ljava/lang/String;)Lcom/weirdvoice/api/SipProfile;

    move-result-object v11

    .line 1261
    .local v11, "vmAcc":Lcom/weirdvoice/api/SipProfile;
    iget-object v13, v11, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1264
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->service:Lcom/weirdvoice/api/ISipService;

    iget-object v14, v11, Lcom/weirdvoice/api/SipProfile;->vm_nbr:Ljava/lang/String;

    iget-wide v0, v2, Lcom/weirdvoice/api/SipProfile;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-interface {v13, v14, v15}, Lcom/weirdvoice/api/ISipService;->makeCall(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1265
    :catch_0
    move-exception v4

    .line 1266
    .local v4, "e":Landroid/os/RemoteException;
    const-string v13, "DialerFragment"

    const-string v14, "Service can\'t be called to make the call"

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1270
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-wide v6, v2, Lcom/weirdvoice/api/SipProfile;->id:J

    .line 1271
    .local v6, "editedAccId":J
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1272
    .local v5, "factory":Landroid/view/LayoutInflater;
    const v13, 0x7f03001e

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1274
    .local v9, "textEntryView":Landroid/view/View;
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1275
    iget-object v14, v2, Lcom/weirdvoice/api/SipProfile;->display_name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1276
    invoke-virtual {v13, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1277
    const v14, 0x7f0c0218

    new-instance v15, Lcom/weirdvoice/ui/dialpad/DialerFragment$14;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6, v7}, Lcom/weirdvoice/ui/dialpad/DialerFragment$14;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;J)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1301
    const v14, 0x7f0c01f1

    new-instance v15, Lcom/weirdvoice/ui/dialpad/DialerFragment$15;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$15;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1309
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 1274
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    .line 1313
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 1314
    const/4 v14, 0x2

    .line 1313
    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 1316
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1318
    .end local v5    # "factory":Landroid/view/LayoutInflater;
    .end local v6    # "editedAccId":J
    .end local v9    # "textEntryView":Landroid/view/View;
    .end local v11    # "vmAcc":Lcom/weirdvoice/api/SipProfile;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    .line 1319
    new-instance v14, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v15

    const-class v16, Lcom/weirdvoice/plugins/telephony/CallHandler;

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    .line 1318
    invoke-static {v13, v14}, Lcom/weirdvoice/utils/CallHandlerPlugin;->getAccountIdForCallHandler(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-ne v3, v13, :cond_0

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    .line 1322
    const-string v14, "phone"

    .line 1321
    invoke-virtual {v13, v14}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 1323
    .local v10, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v12

    .line 1325
    .local v12, "vmNumber":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->service:Lcom/weirdvoice/api/ISipService;

    if-eqz v13, :cond_4

    .line 1328
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->service:Lcom/weirdvoice/api/ISipService;

    invoke-interface {v13, v12}, Lcom/weirdvoice/api/ISipService;->ignoreNextOutgoingCallFor(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1333
    :cond_4
    :goto_1
    new-instance v8, Landroid/content/Intent;

    const-string v13, "android.intent.action.CALL"

    const-string v14, "tel"

    const/4 v15, 0x0

    invoke-static {v14, v12, v15}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1334
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1335
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1329
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 1330
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v13, "DialerFragment"

    const-string v14, "Not possible to ignore next"

    invoke-static {v13, v14}, Lcom/weirdvoice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1338
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_5
    new-instance v13, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1339
    const v14, 0x7f0c0208

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1340
    const v14, 0x7f0c022f

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1341
    const v14, 0x7f0c0218

    new-instance v15, Lcom/weirdvoice/ui/dialpad/DialerFragment$16;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment$16;-><init>(Lcom/weirdvoice/ui/dialpad/DialerFragment;)V

    invoke-virtual {v13, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    .line 1348
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    .line 1338
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    .line 1352
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 1353
    const/4 v14, 0x2

    .line 1352
    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->missingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public placeVideoCall()V
    .locals 3

    .prologue
    .line 1069
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1070
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "opt_call_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1072
    return-void
.end method

.method public setTextDialing(Z)V
    .locals 3
    .param p1, "textMode"    # Z

    .prologue
    .line 927
    const-string v0, "DialerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Switch to mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/weirdvoice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->setTextDialing(ZZ)V

    .line 929
    return-void
.end method

.method public setTextDialing(ZZ)V
    .locals 5
    .param p1, "textMode"    # Z
    .param p2, "forceRefresh"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 938
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    if-ne v4, v0, :cond_2

    .line 965
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 938
    goto :goto_0

    .line 942
    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    .line 943
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    iget-object v4, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v0, v4, v2}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setIsDigit(ZZ)V

    .line 958
    iget-object v2, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->dialPad:Lcom/weirdvoice/widgets/Dialpad;

    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->isDigit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/weirdvoice/widgets/Dialpad;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->autoCompleteList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->hasAutocompleteList()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 964
    invoke-virtual {p0}, Lcom/weirdvoice/ui/dialpad/DialerFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 942
    goto :goto_2

    :cond_4
    move v0, v3

    .line 958
    goto :goto_3

    :cond_5
    move v1, v3

    .line 959
    goto :goto_4
.end method

.method public setTextFieldValue(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 980
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    if-nez v1, :cond_0

    .line 981
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->initText:Ljava/lang/String;

    .line 988
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1, p1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->setText(Ljava/lang/CharSequence;)V

    .line 986
    iget-object v1, p0, Lcom/weirdvoice/ui/dialpad/DialerFragment;->digits:Lcom/weirdvoice/ui/dialpad/DigitsEditText;

    invoke-virtual {v1}, Lcom/weirdvoice/ui/dialpad/DigitsEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 987
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method
