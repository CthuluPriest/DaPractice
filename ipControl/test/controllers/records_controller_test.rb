require 'test_helper'

class RecordsControllerTest < ActionController::TestCase
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post :create, record: { antivirus: @record.antivirus, ce: @record.ce, connection_phone: @record.connection_phone, contact_phone: @record.contact_phone, description: @record.description, details: @record.details, firewall: @record.firewall, house: @record.house, ipadress: @record.ipadress, korpus: @record.korpus, latitude: @record.latitude, longtitude: @record.longtitude, name: @record.name, oblast: @record.oblast, pe: @record.pe, post_index: @record.post_index, provider: @record.provider, proxy: @record.proxy, purpose: @record.purpose, pynkt: @record.pynkt, rayon: @record.rayon, sovet: @record.sovet, speed: @record.speed, street: @record.street, tarifff: @record.tarifff, technology: @record.technology, type: @record.type, visibility: @record.visibility, vpn: @record.vpn }
    end

    assert_redirected_to record_path(assigns(:record))
  end

  test "should show record" do
    get :show, id: @record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record
    assert_response :success
  end

  test "should update record" do
    patch :update, id: @record, record: { antivirus: @record.antivirus, ce: @record.ce, connection_phone: @record.connection_phone, contact_phone: @record.contact_phone, description: @record.description, details: @record.details, firewall: @record.firewall, house: @record.house, ipadress: @record.ipadress, korpus: @record.korpus, latitude: @record.latitude, longtitude: @record.longtitude, name: @record.name, oblast: @record.oblast, pe: @record.pe, post_index: @record.post_index, provider: @record.provider, proxy: @record.proxy, purpose: @record.purpose, pynkt: @record.pynkt, rayon: @record.rayon, sovet: @record.sovet, speed: @record.speed, street: @record.street, tarifff: @record.tarifff, technology: @record.technology, type: @record.type, visibility: @record.visibility, vpn: @record.vpn }
    assert_redirected_to record_path(assigns(:record))
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete :destroy, id: @record
    end

    assert_redirected_to records_path
  end
end
